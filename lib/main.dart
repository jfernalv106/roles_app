import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roles/app_router.dart';
import 'package:roles/bloc/locacion/locacion_bloc.dart';
import 'package:roles/bloc/mapa/mapa_bloc.dart';
import 'package:roles/bloc/menu/menu_bloc.dart';

import 'bloc/rol/rol_bloc.dart';
import 'bloc/rol_local/rol_local_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await PreferenciasUsuario.init();

  // BlocOverrides.runZoned(() => runApp(const MyApp()),
  //     blocObserver: ExpoConsolidadoObservable());

  runApp(const MyApp());
  // runApp(const MyApp())
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RolBloc(),
        ),
        BlocProvider(
          create: (context) => RolLocalBloc(),
        ),
        BlocProvider(
          create: (context) => MapaBloc(),
        ),
        BlocProvider(
          create: (context) => LocacionBloc(),
        ),
        BlocProvider(
          create: (context) => MenuBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Roles',
        initialRoute: AppRouter.inicialRoute,
        routes: AppRouter.routes,
      ),
    );
  }
}
