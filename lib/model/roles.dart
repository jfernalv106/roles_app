import 'package:roles/model/perimetro.dart';

class Rol {
  String? id;

  String? idGeo;
  String? rol;
  String? propietario;
  int? areaHa;
  String? nombrePredio;
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

  List<Perimetro>? perimetro;

  Rol({
    this.id,
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
