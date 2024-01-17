part of 'rol_local_bloc.dart';

@immutable
abstract class RolLocalState {
  final List<RolLocal>? roles;
  const RolLocalState(this.roles);
}

class RolLocalInitial extends RolLocalState {
  const RolLocalInitial() : super(null);
}

class SetRolLocal extends RolLocalState {
  final List<RolLocal>? newRol;
  const SetRolLocal(this.newRol) : super(newRol);
}
