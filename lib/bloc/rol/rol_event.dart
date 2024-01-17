part of 'rol_bloc.dart';

@immutable
abstract class RolEvent {}

class IniciaRol extends RolEvent {
  final List<Rol>? roles;

  IniciaRol(this.roles);
}
