// ignore_for_file: must_be_immutable

part of 'reset_password_one_bloc.dart';

class ResetPasswordOneState extends Equatable {
  ResetPasswordOneState({this.resetPasswordOneModelObj});

  ResetPasswordOneModel? resetPasswordOneModelObj;

  @override
  List<Object?> get props => [
        resetPasswordOneModelObj,
      ];
  ResetPasswordOneState copyWith(
      {ResetPasswordOneModel? resetPasswordOneModelObj}) {
    return ResetPasswordOneState(
      resetPasswordOneModelObj:
          resetPasswordOneModelObj ?? this.resetPasswordOneModelObj,
    );
  }
}
