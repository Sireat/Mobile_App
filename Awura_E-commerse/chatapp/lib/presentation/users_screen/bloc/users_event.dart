// ignore_for_file: must_be_immutable

part of 'users_bloc.dart';

@immutable
abstract class UsersEvent extends Equatable {}

class UsersInitialEvent extends UsersEvent {
  @override
  List<Object?> get props => [];
}
