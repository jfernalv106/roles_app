import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:roles/bloc/locacion/locacion_bloc.dart';
import 'package:roles/bloc/mapa_buscar/buscar_map_bloc.dart';
import 'package:roles/bloc/rol_local/rol_local_bloc.dart';
import 'package:roles/local_model/perimetro_local.dart';
import 'package:roles/mapa_busqueda/widget/input_number.dart';
import 'package:roles/mapa_busqueda/widget/mapa_view_busqueda.dart';
import 'package:roles/mapa_busqueda/widget/rol_list_buscar.dart';
import 'package:roles/mapa_page/widget/map_view.dart';
import 'package:roles/role_local_page.dart/role_local_list.dart';
import 'package:roles/services/roles_service_local.dart';
import 'package:roles/utils/calculos.dart';

import '../local_model/role_local.dart';
import '../role_local_page.dart/rol_local_page.dart';

class MapaBusquedaPage extends StatefulWidget {
  const MapaBusquedaPage({super.key});

  @override
  State<MapaBusquedaPage> createState() => _MapaBusquedaPageState();
}

class _MapaBusquedaPageState extends State<MapaBusquedaPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Map<String, Object> form = {
    'latitud': 0.0,
    'longitud': 0.0,
  };

  Set<Polygon> polygons = HashSet<Polygon>();
  Set<Marker> markers = <Marker>{};

  final rolServiceLocal = RolServiceLocal();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rolBloc = BlocProvider.of<RolLocalBloc>(context, listen: false);
    final mapBuscar = BlocProvider.of<BuscarMapBloc>(context, listen: false);

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: BlocBuilder<RolLocalBloc, RolLocalState>(
          builder: (context, rolState) {
            _polygon(rolState.roles ?? []);

            return Column(
              children: [
                Stack(
                  children: [
                    BlocBuilder<BuscarMapBloc, BuscarMapState>(
                      builder: (context, state) {
                        if (state.punto == null) {
                          return const Center(
                              child: Text('Ingrese Coordenadas '));
                        }
                        if (kDebugMode) {
                          print(state.punto);
                        }
                        return MapViewBusqueda(
                            initialLocation: state.punto!,
                            polygons: polygons,
                            markers: markers);
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Row(
                            children: [
                              Expanded(
                                child: InputNumber(
                                    decimales: true,
                                    width: double.infinity,
                                    formProperty: 'latitud',
                                    labelText: 'latitud',
                                    formValues: form),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: InputNumber(
                                    decimales: true,
                                    width: double.infinity,
                                    formProperty: 'longitud',
                                    labelText: 'longitud',
                                    formValues: form),
                              ),
                              const SizedBox(width: 5),
                              ElevatedButton(
                                  onPressed: () async {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                      final roles =
                                          await rolServiceLocal.getAllRol();

                                      List<RolLocal> rll = [];
                                      final punto = PerimetroLocal()
                                        ..latitud = double.parse(
                                            form['latitud'].toString())
                                        ..longitud = double.parse(
                                            form['longitud'].toString());
                                      for (var rl in roles) {
                                        final role =
                                            Calculos.calculaPuntosCercanos(
                                                rl, punto);
                                        if (role != null) {
                                          rll.add(role);
                                        }
                                      }

                                      mapBuscar.add(IniciaBuscarMap(LatLng(
                                          double.parse(
                                              form['latitud'].toString()),
                                          double.parse(
                                              form['longitud'].toString()))));
                                      // locationBloc
                                      //     .add(IniciaBuscarMap(posicion));
                                      markers.add(Marker(
                                          markerId: const MarkerId('1'),
                                          position: LatLng(
                                              double.parse(
                                                  form['latitud'].toString()),
                                              double.parse(
                                                  form['longitud'].toString())),
                                          icon: BitmapDescriptor
                                              .defaultMarkerWithHue(
                                                  BitmapDescriptor.hueGreen),
                                          onTap: () {},
                                          infoWindow: InfoWindow(
                                            title: 'Posición',
                                            snippet:
                                                'Lat: ${double.parse(form['latitud'].toString())} Log:${double.parse(form['longitud'].toString())}',
                                          )));
                                      rolBloc.add(IniciaRolLocal(rll));
                                      formKey.currentState!.reset();
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 0.0),
                                    child: const Text('Calcular  '),
                                  ))
                            ],
                          )),
                    ),
                  ],
                ),
                RolBuscarList(roles: rolState.roles ?? []),
              ],
            );
          },
        ),
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
