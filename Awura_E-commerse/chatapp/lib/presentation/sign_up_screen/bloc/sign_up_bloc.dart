import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sign_up_item_model.dart';
import 'package:chatapp/presentation/sign_up_screen/models/sign_up_model.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
        signUpModelObj: state.signUpModelObj?.copyWith(
      signUpItemList: fillSignUpItemList(),
    )));
  }

  List<SignUpItemModel> fillSignUpItemList() {
    return List.generate(5, (index) => SignUpItemModel());
  }
}
