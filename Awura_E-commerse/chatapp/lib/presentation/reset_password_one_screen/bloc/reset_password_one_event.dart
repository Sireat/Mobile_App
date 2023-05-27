// ignore_for_file: must_be_immutable

part of 'reset_password_one_bloc.dart';

@immutable
abstract class ResetPasswordOneEvent extends Equatable {}

class ResetPasswordOneInitialEvent extends ResetPasswordOneEvent {
  @override
  List<Object?> get props => [];
}
