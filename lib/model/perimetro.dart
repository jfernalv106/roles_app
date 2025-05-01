class Perimetro {
  double? latitud;
  double? longitud;

  Perimetro({
    this.latitud,
    this.longitud,
  });

  factory Perimetro.fromJson(Map<String, dynamic> json) => Perimetro(
        latitud: json["latitud"]?.toDouble(),
        longitud: json["longitud"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "latitud": latitud,
        "longitud": longitud,
      };
}
