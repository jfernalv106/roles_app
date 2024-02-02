import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roles/mapa_page/mapa_page.dart';
import 'package:roles/menu/widget/button_navigator.dart';
import 'package:roles/role_local_page.dart/rol_local_page.dart';
import 'package:roles/roles_page/roles_page.dart';

import '../bloc/menu/menu_bloc.dart';

class CustomNavegacionBar extends StatelessWidget {
  const CustomNavegacionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BlocBuilder<MenuBloc, int>(
              builder: (context, currentTab) {
                if (currentTab == 0) {
                  return RolesPage();
                }
                if (currentTab == 1) {
                  return const MapaPage();
                }
                if (currentTab == 2) {
                  return RolLocalPage();
                }
                if (currentTab == 3) {
                  return const MapaPage();
                }
                return const Text('Menu');
              },
            ),
            bottomNavigationBar: const CustonNavigator()));
  }
}
