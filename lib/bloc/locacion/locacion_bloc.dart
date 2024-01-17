import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';
import 'package:roles/model/locacion.dart';

part 'locacion_event.dart';
part 'locacion_state.dart';

class LocacionBloc extends Bloc<LocacionEvent, LocacionState> {
  StreamSubscription<Position>? positionStream;

  LocacionBloc() : super(LocacionInitial()) {
    on<OnNewUserLocationEvent>((event, emit) {
      emit(LocacionInitial());
    });

    on<OnNuevaLocacion>((event, emit) {
      // if (state.locacion.lastKnownLocation == null) return;
      List<LatLng> rutas = [...state.locacion.myLocationHistory, event.lng];
      emit(SetLocation(state.locacion
          .copyWith(myLocationHistory: rutas, lastKnownLocation: event.lng)));
    });
    on<OnStartFollowingUser>((event, emit) {
      emit(SetLocation(state.locacion.copyWith(followingUser: true)));
    });
    on<OnStopFollowingUser>((event, emit) {
      emit(SetLocation(state.locacion.copyWith(followingUser: false)));
    });
  }

  Future getCurrentPosition() async {
    final position = await Geolocator.getCurrentPosition();
    add(OnNuevaLocacion(LatLng(position.latitude, position.longitude)));
  }

  void startFollowingUser() {
    add(OnStartFollowingUser());

    positionStream = Geolocator.getPositionStream().listen((event) {
      final position = event;
      add(OnNuevaLocacion(LatLng(position.latitude, position.longitude)));
    });
  }

  void stopFollowingUser() {
    positionStream?.cancel();
    add(OnStopFollowingUser());
    if (kDebugMode) {
      print('stopFollowingUser');
    }
  }

  @override
  Future<void> close() {
    stopFollowingUser();
    return super.close();
  }
}
