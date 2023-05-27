import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/reset_password_item_model.dart';
import 'package:chatapp/presentation/reset_password_one_screen/models/reset_password_one_model.dart';
part 'reset_password_one_event.dart';
part 'reset_password_one_state.dart';

class ResetPasswordOneBloc
    extends Bloc<ResetPasswordOneEvent, ResetPasswordOneState> {
  ResetPasswordOneBloc(ResetPasswordOneState initialState)
      : super(initialState) {
    on<ResetPasswordOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordOneInitialEvent event,
    Emitter<ResetPasswordOneState> emit,
  ) async {
    emit(state.copyWith(
        resetPasswordOneModelObj: state.resetPasswordOneModelObj?.copyWith(
      resetPasswordItemList: fillResetPasswordItemList(),
    )));
  }

  List<ResetPasswordItemModel> fillResetPasswordItemList() {
    return List.generate(2, (index) => ResetPasswordItemModel());
  }
}
