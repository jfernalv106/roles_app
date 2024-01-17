import 'package:isar/isar.dart';
import 'package:roles/local_model/role_local.dart';
part 'perimetro_local.g.dart';

//@collection
@embedded
class PerimetroLocal {
  //Id id = Isar.autoIncrement;
  // IsarLink<RolLocal> rol = IsarLink<RolLocal>();
  int? predio;
  double? latitud;
  double? longitud;
  @ignore
  double? distancia;
}
