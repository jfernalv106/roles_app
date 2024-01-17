import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roles/bloc/locacion/locacion_bloc.dart';
import 'package:roles/bloc/rol_local/rol_local_bloc.dart';
import 'package:roles/local_model/perimetro_local.dart';
import 'package:roles/local_model/role_local.dart';
import 'package:roles/menu/menu.dart';
import 'package:roles/role_local_page.dart/role_local_list.dart';

import '../mapa_page/mapa_page.dart';
import '../services/roles_service_local.dart';
import '../utils/calculos.dart';

class RolLocalPage extends StatelessWidget {
  RolLocalPage({super.key});
  final rolServiceLocal = RolServiceLocal();
  late List<RolLocal> roles;

  @override
  Widget build(BuildContext context) {
    final rolBloc = BlocProvider.of<RolLocalBloc>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Column(
                children: const [
                  // BlocBuilder<SocketStatusBloc, SocketStatusState>(
                  //     builder: (context, bloc) {
                  //   return Text(bloc.status ?? 'Offline',
                  //       style: const TextStyle(fontSize: 12));
                  // }),
                  Text('Actualización', style: TextStyle(fontSize: 16))
                ],
              ),
              backgroundColor: const Color.fromARGB(200, 22, 80, 2),
            ),
            drawer: const MenuLateral(),
            body: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    BlocBuilder<RolLocalBloc, RolLocalState>(
                        builder: (context, bloc) {
                      if (bloc.roles != null) {
                        if (bloc.roles!.isEmpty) {
                          return Container(
                              padding: const EdgeInsets.all(20),
                              child: const CircularProgressIndicator());
                        }
                        return RolLocalList(roles: bloc.roles!);
                      }
                      return Container();
                    }),
                    BlocBuilder<LocacionBloc, LocacionState>(
                      builder: (context, state) {
                        if (state.locacion.lastKnownLocation == null) {
                          return const Center(
                              child: Text('Espere por favor...'));
                        }
                        if (kDebugMode) {
                          print(state.locacion.lastKnownLocation);
                        }
                        return TextButton(
                            onPressed: () async {
                              roles = await rolServiceLocal.getAllRol();

                              List<RolLocal> rll = [];
                              final punto = PerimetroLocal()
                                ..latitud =
                                    state.locacion.lastKnownLocation!.latitude
                                ..longitud =
                                    state.locacion.lastKnownLocation!.longitude;
                              for (var rl in roles) {
                                final role =
                                    Calculos.calculaPuntosCercanos(rl, punto);
                                if (role != null) {
                                  rll.add(role);
                                }
                              }
                              rolBloc.add(IniciaRolLocal(rll));
                            },
                            child: const Text('Calcular'));
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
