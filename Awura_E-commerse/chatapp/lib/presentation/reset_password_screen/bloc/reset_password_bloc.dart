import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chatapp/presentation/reset_password_screen/models/reset_password_model.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(ResetPasswordState initialState) : super(initialState) {
    on<ResetPasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordInitialEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {}
}
