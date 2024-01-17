import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roles/bloc/rol_local/rol_local_bloc.dart';
import 'package:roles/local_model/role_local.dart';

class RolLocalList extends StatelessWidget {
  const RolLocalList({super.key, required this.roles});
  final List<RolLocal> roles;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: roles.length,
        itemBuilder: (context, index) {
          return _card(context, roles[index]);
        },
      ),
    );
  }

  Widget _card(BuildContext context, RolLocal rol) {
    final rolBloc = BlocProvider.of<RolLocalBloc>(context, listen: false);
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
                onLongPress: () {
                  rolBloc.add(RemoveRolLocal(rol));
                },
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${rol.propietario}'),
                    Text('Predio: ${rol.nombrePredio}  '),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}