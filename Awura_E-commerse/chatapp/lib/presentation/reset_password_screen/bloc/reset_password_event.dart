// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

@immutable
abstract class ResetPasswordEvent extends Equatable {}

class ResetPasswordInitialEvent extends ResetPasswordEvent {
  @override
  List<Object?> get props => [];
}
