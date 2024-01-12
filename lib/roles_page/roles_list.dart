import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:roles/model/roles.dart';

class RolList extends StatelessWidget {
  const RolList({super.key, required this.roles});
  final List<Rol> roles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: roles.length,
        itemBuilder: (context, index) {
          return _card(context, roles[index]);
        },
      ),
    );
  }

  Widget _card(BuildContext context, Rol rol) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                leading: const Icon(Icons.add_box_outlined),
                title: Text('Rol: ${rol.rol}'),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${rol.propietario}'),
                    Text('BOOKING: ${rol.nombrePredio}  '),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
