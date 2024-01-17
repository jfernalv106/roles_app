part of 'rol_bloc.dart';

@immutable
abstract class RolState {
  final List<Rol>? roles;
  const RolState(this.roles);
}

class RolInitial extends RolState {
  const RolInitial() : super(null);
}

class SetRol extends RolState {
  final List<Rol>? newRol;
  const SetRol(this.newRol) : super(newRol);
}
