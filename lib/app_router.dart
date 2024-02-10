import 'package:flutter/material.dart';
import 'package:roles/mapa_busqueda/mapa_busqueda.dart';
import 'package:roles/menu/menu_toolbar.dart';
import 'package:roles/role_local_page.dart/rol_local_page.dart';
import 'package:roles/roles_page/roles_page.dart';

import 'mapa_page/mapa_page.dart';

class AppRouter {
  static const inicialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'carga': (context) => RolesPage(),
    'local': (context) => RolLocalPage(),
    'mapa': (context) => MapaPage(),
    'home': (context) => CustomNavegacionBar(),
    'buscar': (context) => MapaBusquedaPage()
  };
}
