part of 'number_factorial_bloc.dart';

abstract class NumberFactorialState extends Equatable {
  const NumberFactorialState();
  
  @override
  List<Object> get props => [];
}

class NumberFactorialInitial extends NumberFactorialState {}
