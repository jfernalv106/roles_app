import 'package:isar/isar.dart';
import 'package:roles/local_model/perimetro_local.dart';
part 'role_local.g.dart';

@collection
class RolLocal {
  Id? id;
  @Index(unique: true, name: 'id_rol')
  int? rolId;
  int? prediosId;
  String? idGeo;
  String? rol;
  String? propietario;
  int? areaHa;
  String? nombrePredio;
  @Backlink(to: 'rol')
  // IsarLinks<PerimetroLocal> perimetro = IsarLinks<PerimetroLocal>();
  late List<PerimetroLocal> perimetros = [];
  int? escaIngr;
  int? fechIngr;
  String? msLink;
  String? descComu;
  String? anoreaSii;
  String? lugarBn;
  int? codicomu;
  String? descClasif;
  String? ortoFoto;
  String? ortoImage;
}
