import 'package:roles/model/perimetro.dart';

class Rol {
  String? id;
  int? rolId;
  int? prediosId;
  String? idGeo;
  String? rol;
  String? propietario;
  int? areaHa;
  String? nombrePredio;
  List<Perimetro>? perimetro;
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

  Rol({
    this.id,
    this.rolId,
    this.prediosId,
    this.idGeo,
    this.rol,
    this.propietario,
    this.areaHa,
    this.nombrePredio,
    this.perimetro,
    this.escaIngr,
    this.fechIngr,
    this.msLink,
    this.descComu,
    this.anoreaSii,
    this.lugarBn,
    this.codicomu,
    this.descClasif,
    this.ortoFoto,
    this.ortoImage,
  });

  factory Rol.fromJson(Map<String, dynamic> json) => Rol(
        id: json["_id"],
        rolId: json["id"],
        prediosId: json["prediosID"],
        idGeo: json["idGeo"],
        rol: json["rol"],
        propietario: json["propietario"],
        areaHa: json["areaHa"],
        nombrePredio: json["nombrePredio"],
        perimetro: json["perimetro"] == null
            ? []
            : List<Perimetro>.from(
                json["perimetro"]!.map((x) => Perimetro.fromJson(x))),
        escaIngr: json["escaINGR"],
        fechIngr: json["fechINGR"],
        msLink: json["msLink"],
        descComu: json["descComu"],
        anoreaSii: json["anoreaSII"],
        lugarBn: json["lugarBN"],
        codicomu: json["codicomu"],
        descClasif: json["descClasif"],
        ortoFoto: json["ortoFoto"],
        ortoImage: json["ortoImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "id": rolId,
        "prediosID": prediosId,
        "idGeo": idGeo,
        "rol": rol,
        "propietario": propietario,
        "areaHa": areaHa,
        "nombrePredio": nombrePredio,
        "perimetro": perimetro == null
            ? []
            : List<dynamic>.from(perimetro!.map((x) => x.toJson())),
        "escaINGR": escaIngr,
        "fechINGR": fechIngr,
        "msLink": msLink,
        "descComu": descComu,
        "anoreaSII": anoreaSii,
        "lugarBN": lugarBn,
        "codicomu": codicomu,
        "descClasif": descClasif,
        "ortoFoto": ortoFoto,
        "ortoImage": ortoImage,
      };
}
