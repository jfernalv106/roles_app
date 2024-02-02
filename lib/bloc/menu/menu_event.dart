part of 'menu_bloc.dart';

@immutable
abstract class MenuEvent extends Equatable {
  const MenuEvent();

  @override
  List<Object> get props => [];
}

class MenuChangeEvent extends MenuEvent {
  final int newIndex;

  const MenuChangeEvent(this.newIndex);
  @override
  List<Object> get props => [newIndex];

  @override
  String toString() {
    return 'EVENTO: TabEvent: $newIndex';
  }
}
