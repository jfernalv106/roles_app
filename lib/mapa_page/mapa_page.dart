import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:roles/bloc/locacion/locacion_bloc.dart';
import 'package:roles/bloc/rol_local/rol_local_bloc.dart';
import 'package:roles/local_model/perimetro_local.dart';
import 'package:roles/mapa_page/widget/map_view.dart';
import 'package:roles/role_local_page.dart/role_local_list.dart';
import 'package:roles/services/roles_service_local.dart';
import 'package:roles/utils/calculos.dart';

import '../local_model/role_local.dart';
import '../role_local_page.dart/rol_local_page.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({super.key});

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  late LocacionBloc locationBloc;
  Set<Polygon> polygons = HashSet<Polygon>();
  Set<Marker> markers = <Marker>{};
  final rolServiceLocal = RolServiceLocal();

  @override
  void initState() {
    super.initState();

    locationBloc = BlocProvider.of<LocacionBloc>(context);
    locationBloc.startFollowingUser();
    locationBloc.getCurrentPosition();
  }

  @override
  void dispose() {
    locationBloc.stopFollowingUser();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rolBloc = BlocProvider.of<RolLocalBloc>(context, listen: false);

    return SafeArea(child: Scaffold(
      body: BlocBuilder<LocacionBloc, LocacionState>(
        builder: (context, state) {
          if (state.locacion.lastKnownLocation == null) {
            return const Center(child: Text('Espere por favor...'));
          }
          if (kDebugMode) {
            print(state.locacion.lastKnownLocation);
          }
          return BlocBuilder<RolLocalBloc, RolLocalState>(
            builder: (context, rolState) {
              _polygon(rolState.roles ?? []);

              return Column(
                children: [
                  Stack(
                    children: [
                      MapView(
                          initialLocation: state.locacion.lastKnownLocation!,
                          polygons: polygons),
                      BlocBuilder<LocacionBloc, LocacionState>(
                        builder: (context, state) {
                          if (state.locacion.lastKnownLocation == null) {
                            return const Center(
                                child: Text('Espere por favor...'));
                          }
                          if (kDebugMode) {
                            print(state.locacion.lastKnownLocation);
                          }
                          return ElevatedButton(
                              onPressed: () async {
                                final roles = await rolServiceLocal.getAllRol();

                                List<RolLocal> rll = [];
                                final punto = PerimetroLocal()
                                  ..latitud =
                                      state.locacion.lastKnownLocation!.latitude
                                  ..longitud = state
                                      .locacion.lastKnownLocation!.longitude;
                                for (var rl in roles) {
                                  final role =
                                      Calculos.calculaPuntosCercanos(rl, punto);
                                  if (role != null) {
                                    rll.add(role);
                                  }
                                }
                                rolBloc.add(IniciaRolLocal(rll));
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0, vertical: 10.0),
                                child: Text(
                                    'Calcular  (${state.locacion.lastKnownLocation!.latitude} ${state.locacion.lastKnownLocation!.longitude})'),
                              ));
                        },
                      ),
                    ],
                  ),
                  RolLocalList(roles: rolState.roles ?? []),
                ],
              );
            },
          );
        },
      ),
    ));
  }

  _polygon(List<RolLocal> roles) {
    for (var rl in roles) {
      List<LatLng> puntos = [];
      for (var p in rl.perimetros) {
        puntos.add(LatLng(p.latitud!, p.longitud!));
      }
      polygons.add(Polygon(
        visible: true,
        polygonId: PolygonId(rl.rol!),
        points: puntos,
        fillColor: const Color.fromARGB(40, 81, 255, 0),
        strokeColor: const Color.fromARGB(255, 255, 0, 106),
        geodesic: true,
        strokeWidth: 4,
        consumeTapEvents: true,
        onTap: () {
          mostrarAlerta(rl);
        },
      ));
    }
  }

  void mostrarAlerta(RolLocal rol) {
    showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0)
              ]),
          child: SizedBox(
            height: 300,
            child: AlertDialog(
              title: Text('Rol: ${rol.rol}'),
              content: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Comuna: ${rol.descComu}'),
                    Text('Predio:${rol.nombrePredio}'),
                    Text('Propietario: ${rol.propietario}'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Ok'))
              ],
            ),
          ),
        );
      },
    );
  }
}
