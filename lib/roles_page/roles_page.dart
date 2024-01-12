import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:roles/roles_page/roles_list.dart';
import 'package:roles/services/roles_service.dart';

class RolesPage extends StatelessWidget {
  RolesPage({super.key});
  final rolService = RolesService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: RolList(roles: [])),
      ),
    ));
  }
}
