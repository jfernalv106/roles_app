import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:roles/local_model/perimetro_local.dart';

import '../db/isar.dart';
import '../local_model/role_local.dart';

class RolServiceLocal {
  late Future<Isar> db;

  RolServiceLocal() {
    db = IsarService().db;
    //open DB for database usage.
  }

  Future<List<RolLocal>> getAllRol() async {
    final isar = await db;

    return await isar.rolLocals.where().findAll();
  }

  // Future<List<PerimetroLocal>> getAllPerimetros() async {
  //   final isar = await db;

  //   return await isar.perimetroLocals.where().findAll();
  // }

  Future<bool> saveRol(RolLocal rol) async {
    try {
      final isar = await db;

      await isar.writeTxn(() async {
        await isar.rolLocals.put(rol);
      });
      return true;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Future<bool> savePerimetros(List<PerimetroLocal> perimetros) async {
  //   try {
  //     final isar = await db;

  //     await isar.writeTxn(() async {
  //       await isar.perimetroLocals.putAll(perimetros);
  //     });
  //     return true;
  //   } on IsarError catch (error) {
  //     throw Exception(error.message);
  //   }
  // }

  // Future<bool> savePerimetro(PerimetroLocal perimetro) async {
  //   try {
  //     final isar = await db;

  //     await isar.writeTxn(() async {
  //       await isar.perimetroLocals.put(perimetro);
  //     });
  //     return true;
  //   } on IsarError catch (error) {
  //     throw Exception(error.message);
  //   }
  // }
}
