import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'menu_event.dart';

class MenuBloc extends Bloc<MenuEvent, int> {
  MenuBloc() : super(1) {
    on<MenuChangeEvent>((event, emit) {
      emit(event.newIndex);
    });
  }
}
