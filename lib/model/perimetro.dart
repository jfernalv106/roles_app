class Perimetro {
  int? id;
  int? predio;
  double? latitud;
  double? longitud;

  Perimetro({
    this.id,
    this.predio,
    this.latitud,
    this.longitud,
  });

  factory Perimetro.fromJson(Map<String, dynamic> json) => Perimetro(
        id: json["id"],
        predio: json["predio"],
        latitud: json["latitud"]?.toDouble(),
        longitud: json["longitud"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "predio": predio,
        "latitud": latitud,
        "longitud": longitud,
      };
}
