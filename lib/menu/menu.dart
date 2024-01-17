import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  final _textStyle = const TextStyle(fontSize: 15.0, color: Colors.black87);
  final _textStyleMenu = const TextStyle(fontSize: 15.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(199, 255, 255, 255),
            ),
            child: _menuItem(context),
          ),
        ));
  }

  Widget _menuItem(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(200, 22, 80, 2),
          ),
          child: Column(
            children: const [
              FadeInImage(
                width: 200,
                image: AssetImage('assets/img/vacio.png'),
                placeholder: AssetImage('assets/img/vacio.png'),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        ListTile(
          title: Text(
            'Actualizar',
            style: _textStyle,
          ),
          trailing: const Icon(
            Icons.map_outlined,
            color: Colors.black,
            size: 20,
          ),
          onTap: () => Navigator.pushNamed(context, 'carga'),
        ),
        // ListTile(
        //   title: Text(
        //     'Calcular',
        //     style: _textStyle,
        //   ),
        //   trailing: const Icon(
        //     Icons.track_changes_rounded,
        //     color: Colors.black,
        //     size: 20,
        //   ),
        //   onTap: () => Navigator.pushNamed(context, 'local'),
        // ),
        ListTile(
          title: Text(
            'Mapa',
            style: _textStyle,
          ),
          trailing: const Icon(
            Icons.track_changes_rounded,
            color: Colors.black,
            size: 20,
          ),
          onTap: () => Navigator.pushNamed(context, 'mapa'),
        ),
      ],
    );
  }
}
