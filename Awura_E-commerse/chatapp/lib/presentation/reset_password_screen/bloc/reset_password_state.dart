// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

class ResetPasswordState extends Equatable {
  ResetPasswordState({this.resetPasswordModelObj});

  ResetPasswordModel? resetPasswordModelObj;

  @override
  List<Object?> get props => [
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({ResetPasswordModel? resetPasswordModelObj}) {
    return ResetPasswordState(
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
