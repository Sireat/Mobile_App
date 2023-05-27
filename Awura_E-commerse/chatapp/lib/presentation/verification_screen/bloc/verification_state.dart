// ignore_for_file: must_be_immutable

part of 'verification_bloc.dart';

class VerificationState extends Equatable {
  VerificationState({
    this.otpController,
    this.verificationModelObj,
  });

  TextEditingController? otpController;

  VerificationModel? verificationModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationModelObj,
      ];
  VerificationState copyWith({
    TextEditingController? otpController,
    VerificationModel? verificationModelObj,
  }) {
    return VerificationState(
      otpController: otpController ?? this.otpController,
      verificationModelObj: verificationModelObj ?? this.verificationModelObj,
    );
  }
}
