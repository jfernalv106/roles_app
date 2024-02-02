import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/menu/menu_bloc.dart';

class CustonNavigator extends StatelessWidget {
  const CustonNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBloc = context.read<MenuBloc>();
    return BlocBuilder<MenuBloc, int>(
      builder: (context, currentTabIndex) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
          currentIndex: currentTabIndex,
          onTap: (index) => bottomNavigationBloc.add(MenuChangeEvent(index)),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.update_outlined,
                color: Colors.white,
              ),
              label: 'Actualizar',
              activeIcon: Icon(
                Icons.update_outlined,
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined, color: Colors.white),
                label: 'Mapa',
                activeIcon: Icon(Icons.map_outlined)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined, color: Colors.white),
                label: 'Buscar',
                activeIcon: Icon(Icons.search_outlined)),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.edit_location_alt_outlined, color: Colors.white),
                label: 'Mis Puntos',
                activeIcon: Icon(Icons.edit_location_alt_outlined)),
          ],
          iconSize: 24,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}
