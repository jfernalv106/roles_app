part of 'rol_local_bloc.dart';

@immutable
abstract class RolLocalEvent {}

class IniciaRolLocal extends RolLocalEvent {
  final List<RolLocal>? roles;

  IniciaRolLocal(this.roles);
}

class RemoveRolLocal extends RolLocalEvent {
  final RolLocal rol;
  RemoveRolLocal(this.rol);
}
