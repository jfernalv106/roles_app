import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:roles/local_model/perimetro_local.dart';
import 'package:roles/local_model/role_local.dart';

class Calculos {
  static double distanciaEntrePuntos(PerimetroLocal p1, PerimetroLocal p2) {
    return (2 *
        6371 *
        asin(sqrt(pow(sin(p1.latitud! - p2.latitud!), 2) / 2 +
            cos(p1.latitud!) *
                cos(p2.latitud!) *
                pow(sin(p1.longitud! - p2.longitud!), 2) /
                2)));
  }

  static RolLocal? calculaPuntosCercanos(
      RolLocal rol, PerimetroLocal ubicacion) {
    for (PerimetroLocal punto in rol.perimetros) {
      final distancia = distanciaEntrePuntos(punto, ubicacion);
      if (distancia < 20) {
        return rol;
      }
    }
    return null;
  }

  List<PerimetroLocal> ordenaPuntosCercanos(List<PerimetroLocal> resultados) {
    for (int i = 0; i < resultados.length - 1; i++) {
      int minimo = i;
      for (int j = i + 1; j < resultados.length; j++) {
        if (resultados[j].distancia! < resultados[minimo].distancia!) {
          minimo = j;
        }
      }

      if (minimo != i) {
        double temp = resultados[i].distancia!;
        resultados[i] = resultados[minimo];
        resultados[minimo].distancia = temp;
      }
    }
    return resultados;
  }
}
