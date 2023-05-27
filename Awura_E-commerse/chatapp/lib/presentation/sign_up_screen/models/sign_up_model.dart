// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sign_up_item_model.dart';

/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel extends Equatable {
  SignUpModel({this.signUpItemList = const []});

  List<SignUpItemModel> signUpItemList;

  SignUpModel copyWith({List<SignUpItemModel>? signUpItemList}) {
    return SignUpModel(
      signUpItemList: signUpItemList ?? this.signUpItemList,
    );
  }

  @override
  List<Object?> get props => [signUpItemList];
}
