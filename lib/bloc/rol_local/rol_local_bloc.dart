import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:roles/local_model/role_local.dart';

part 'rol_local_event.dart';
part 'rol_local_state.dart';

class RolLocalBloc extends Bloc<RolLocalEvent, RolLocalState> {
  RolLocalBloc() : super(const RolLocalInitial()) {
    on<IniciaRolLocal>((event, emit) {
      emit(SetRolLocal(event.roles));
    });

    on<RemoveRolLocal>((event, emit) {
      if (state.roles == null) return;
      final roles = [...?state.roles];
      roles.remove(event.rol);
      emit(SetRolLocal(roles));
    });
  }
}
