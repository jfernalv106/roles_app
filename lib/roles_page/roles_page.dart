import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:roles/bloc/rol/rol_bloc.dart';
import 'package:roles/local_model/role_local.dart';
import 'package:roles/roles_page/roles_list.dart';
import 'package:roles/services/roles_service.dart';
import 'package:roles/menu/menu.dart';

import '../local_model/perimetro_local.dart';
import '../model/roles.dart';
import '../services/roles_service_local.dart';
import '../utils/utilidades.dart';

class RolesPage extends StatelessWidget {
  RolesPage({super.key});
  final rolService = RolesService();
  final rolServiceLocal = RolServiceLocal();
  late List<Rol> roles;
  bool buscando = false;

  @override
  Widget build(BuildContext context) {
    final rolBloc = BlocProvider.of<RolBloc>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Card(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                SizedBox(
                  child: TextButton.icon(
                    onPressed: () async {
                      try {
                        if (kDebugMode) {
                          print('Buscando');
                        }
                        Utilidades.mostrarAlerta('Descargando...', context);
                        buscando = true;

                        roles = await rolService.getRoles();
                        rolBloc.add(IniciaRol(roles));
                        if (kDebugMode) {
                          print(roles);
                        }
                        buscando = false;
                        Navigator.of(context).pop();
                        Utilidades.mostrarAlerta('Guardando...', context);
                        for (var rl in roles) {
                          late List<PerimetroLocal> perimetros = [];
                          for (var p in rl.perimetro!) {
                            PerimetroLocal pr = PerimetroLocal()
                              ..latitud = p.latitud
                              ..longitud = p.longitud
                              ..predio = p.predio;
                            perimetros.add(pr);
                          }
                          late RolLocal rol = RolLocal()
                            ..id = rl.rolId
                            ..anoreaSii = rl.anoreaSii
                            ..areaHa = rl.areaHa
                            ..codicomu = rl.codicomu
                            ..descClasif = rl.descClasif
                            ..descComu = rl.descComu
                            ..escaIngr = rl.escaIngr
                            ..fechIngr = rl.fechIngr
                            ..idGeo = rl.idGeo
                            ..rolId = rl.rolId
                            ..lugarBn = rl.lugarBn
                            ..msLink = rl.msLink
                            ..nombrePredio = rl.nombrePredio
                            ..ortoFoto = rl.ortoFoto
                            ..perimetros.addAll(perimetros)
                            ..ortoImage = rl.ortoImage
                            ..prediosId = rl.prediosId
                            ..propietario = rl.propietario
                            ..rol = rl.rol;

                          if (kDebugMode) {
                            print(rol);
                          }
                          await rolServiceLocal.saveRol(rol);
                        }
                        Navigator.of(context).pop();

                        Utilidades.showToast(
                            context, 'Actualización Exitosa', '');
                      } catch (e) {
                        if (kDebugMode) {
                          print(e);
                        }
                      }
                    },
                    icon: const Icon(Icons.search_outlined),
                    label: const Text('Descargar Actualización'),
                  ),
                ),
                BlocBuilder<RolBloc, RolState>(builder: (context, bloc) {
                  if (bloc.roles != null) {
                    if (bloc.roles!.isEmpty) {
                      return Container(
                          padding: const EdgeInsets.all(20),
                          child: const CircularProgressIndicator());
                    }
                    return RolList(roles: bloc.roles!);
                  }
                  return Container();
                }),
              ],
            ),
          ),
        ),
      ),
    )));
  }
}
