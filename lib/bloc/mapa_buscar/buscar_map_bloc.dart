import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'buscar_map_event.dart';
part 'buscar_map_state.dart';

class BuscarMapBloc extends Bloc<BuscarMapEvent, BuscarMapState> {
  BuscarMapBloc() : super(BuscarMapInitial()) {
    on<IniciaBuscarMap>((event, emit) {
      emit(SetMapInitial(event.punto));
    });
  }
}
