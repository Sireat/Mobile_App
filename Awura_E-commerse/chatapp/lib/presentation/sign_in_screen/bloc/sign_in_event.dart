// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {}

class SignInInitialEvent extends SignInEvent {
  @override
  List<Object?> get props => [];
}
