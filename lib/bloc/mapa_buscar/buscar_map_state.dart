part of 'buscar_map_bloc.dart';

@immutable
abstract class BuscarMapState extends Equatable {
  final LatLng? punto;
  const BuscarMapState(this.punto);

  @override
  List<Object> get props => [];
}

class BuscarMapInitial extends BuscarMapState {
  const BuscarMapInitial() : super(null);
}

class SetMapInitial extends BuscarMapState {
  final LatLng? newPunto;
  const SetMapInitial(this.newPunto) : super(newPunto);
}
