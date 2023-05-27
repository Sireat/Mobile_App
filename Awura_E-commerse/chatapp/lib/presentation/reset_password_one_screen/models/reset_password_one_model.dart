// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'reset_password_item_model.dart';

/// This class defines the variables used in the [reset_password_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResetPasswordOneModel extends Equatable {
  ResetPasswordOneModel({this.resetPasswordItemList = const []});

  List<ResetPasswordItemModel> resetPasswordItemList;

  ResetPasswordOneModel copyWith(
      {List<ResetPasswordItemModel>? resetPasswordItemList}) {
    return ResetPasswordOneModel(
      resetPasswordItemList:
          resetPasswordItemList ?? this.resetPasswordItemList,
    );
  }

  @override
  List<Object?> get props => [resetPasswordItemList];
}
