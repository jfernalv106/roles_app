import 'package:isar/isar.dart';

@collection
class PuntoLocal {
  @Index(unique: true, name: 'id')
  Id? id;
  String? rol;
  List<String>? propietarios;
  double? latitud;
  double? longitud;
  int? cantidad;
  int? montoPagado;
  int? valorMetro;
}
