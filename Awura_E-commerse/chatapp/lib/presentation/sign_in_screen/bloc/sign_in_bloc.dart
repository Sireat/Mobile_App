import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sign_in_item_model.dart';
import 'package:chatapp/presentation/sign_in_screen/models/sign_in_model.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(SignInState initialState) : super(initialState) {
    on<SignInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInInitialEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
        signInModelObj: state.signInModelObj?.copyWith(
      signInItemList: fillSignInItemList(),
    )));
  }

  List<SignInItemModel> fillSignInItemList() {
    return List.generate(2, (index) => SignInItemModel());
  }
}
