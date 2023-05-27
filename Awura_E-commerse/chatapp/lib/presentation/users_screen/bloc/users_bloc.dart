import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/users_item_model.dart';
import 'package:chatapp/presentation/users_screen/models/users_model.dart';
part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(UsersState initialState) : super(initialState) {
    on<UsersInitialEvent>(_onInitialize);
  }

  List<UsersItemModel> fillUsersItemList() {
    return List.generate(7, (index) => UsersItemModel());
  }

  _onInitialize(
    UsersInitialEvent event,
    Emitter<UsersState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        usersModelObj: state.usersModelObj?.copyWith(
      usersItemList: fillUsersItemList(),
    )));
  }
}
