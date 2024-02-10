import 'package:flutter/material.dart';

class Utilidades {
  static void mostrarAlerta(String titulo, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0)
              ]),
          child: AlertDialog(
            title: Text(titulo),
            content: const LinearProgressIndicator(),
            actions: const <Widget>[],
          ),
        );
      },
    );
  }

  static void showToast(BuildContext context, String titulo, String mensaje) {
    final scaffold = ScaffoldMessenger.of(context);

    scaffold.showSnackBar(
      SnackBar(
        content: Text(titulo),
        action: SnackBarAction(
            label: mensaje, onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
