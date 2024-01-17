part of 'locacion_bloc.dart';

@immutable
abstract class LocacionState {
  final Locacion locacion;

  const LocacionState({required this.locacion});
}

class LocacionInitial extends LocacionState {
  LocacionInitial()
      : super(locacion: Locacion(followingUser: true, myLocationHistory: []));
}

class SetLocation extends LocacionState {
  final Locacion newLocacion;

  const SetLocation(this.newLocacion) : super(locacion: newLocacion);
}
