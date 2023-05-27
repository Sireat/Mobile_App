// ignore_for_file: must_be_immutable

part of 'verification_bloc.dart';

@immutable
abstract class VerificationEvent extends Equatable {}

class VerificationInitialEvent extends VerificationEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
