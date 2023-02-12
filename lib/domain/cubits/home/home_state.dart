part of "home_cubit.dart";

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class ChooseFurnitureType extends HomeState {
  final FurnitureType type;

  ChooseFurnitureType(this.type);
  @override
  List<Object?> get props => [type];
}

class ChangeQuntityState extends HomeState {
  final int quantity;

  ChangeQuntityState(this.quantity);
  @override
  List<Object?> get props => [quantity];
}
