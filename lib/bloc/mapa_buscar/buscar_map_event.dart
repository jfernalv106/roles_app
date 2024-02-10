part of 'buscar_map_bloc.dart';

@immutable
abstract class BuscarMapEvent extends Equatable {
  const BuscarMapEvent();

  @override
  List<Object> get props => [];
}

class IniciaBuscarMap extends BuscarMapEvent {
  final LatLng? punto;

  const IniciaBuscarMap(this.punto);
}
