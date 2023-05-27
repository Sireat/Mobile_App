// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sign_in_item_model.dart';

/// This class defines the variables used in the [sign_in_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignInModel extends Equatable {
  SignInModel({this.signInItemList = const []});

  List<SignInItemModel> signInItemList;

  SignInModel copyWith({List<SignInItemModel>? signInItemList}) {
    return SignInModel(
      signInItemList: signInItemList ?? this.signInItemList,
    );
  }

  @override
  List<Object?> get props => [signInItemList];
}
