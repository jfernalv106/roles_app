import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNumber extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final double? width;
  final bool decimales;
  final String? valorInicial;

  final String formProperty;
  final Map<String, Object> formValues;
  const InputNumber(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      required this.formProperty,
      required this.formValues,
      this.width,
      required this.decimales,
      this.valorInicial})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final regex =
        (decimales) ? RegExp(r'^[-+]?\d+\.?\d+$') : RegExp(r'^([0-9])*');

    return SizedBox(
      width: width,
      child: TextFormField(
        obscureText: false,
        initialValue: valorInicial ?? '',
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        // inputFormatters: [FilteringTextInputFormatter.allow(regex)],
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          if (value == '') return 'Este campo es requerido';
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style:
            const TextStyle(color: Colors.white, backgroundColor: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          helperText: helperText,
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ),
      ),
    );
  }
}
