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
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.21,
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
    return Card(
      margin: const EdgeInsets.all(4.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                      leading: const Icon(Icons.map_outlined),
                      title: Text('Rol: ${rol.rol}'),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${rol.propietario}'),
                          Text('Predio: ${rol.nombrePredio}  '),
                        ],
                      )),
                ),
                IconButton(
                    onPressed: () {
                      rolBloc.add(RemoveRolLocal(rol));
                      Navigator.pushNamed(context, 'mapa');
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
