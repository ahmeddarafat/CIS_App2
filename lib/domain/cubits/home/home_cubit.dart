import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

enum FurnitureType { chairs, sofa, talbes }

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);

  FurnitureType selected = FurnitureType.chairs;
  void chooseFurniture(FurnitureType type) {
    selected = type;
    emit(ChooseFurnitureType(type));
  }

  int qunatity = 1;
  void increaseQuantity() {
    qunatity++;
    emit(ChangeQuntityState(qunatity));
  }

  void decreaseQuantity() {
    if (qunatity > 1) {
      qunatity--;
      emit(ChangeQuntityState(qunatity));
    }
  }
}
