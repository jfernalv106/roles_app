import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/roles.dart';
import '../utils/constantes.dart';

class RolesService {
  final List<Rol> _roles = [];

  Map<String, String> header = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  Future<List<Rol>> getRoles() async {
    _roles.clear();
    Uri url = Uri.parse('$URL/api-predio/predios-mongo');

    final resp = await http.get(url, headers: header);
    if (resp.statusCode == 200) {
      final decodedResp = json.decode(resp.body);

      final ord = (decodedResp as List).map((x) => Rol.fromJson(x)).toList();

      _roles.addAll(ord);
    }
    return _roles;
  }
}
