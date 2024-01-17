import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../model/roles.dart';

part 'rol_event.dart';
part 'rol_state.dart';

class RolBloc extends Bloc<RolEvent, RolState> {
  RolBloc() : super(const RolInitial()) {
    on<IniciaRol>((event, emit) {
      emit(SetRol(event.roles));
    });
  }
}
