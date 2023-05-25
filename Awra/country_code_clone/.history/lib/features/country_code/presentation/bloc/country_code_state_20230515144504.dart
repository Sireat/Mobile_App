part of 'country_code_bloc.dart';

abstract class CountryCodeState extends Equatable {
  const CountryCodeState();

  @override
  List<Object> get props => [];
}

class CountryCodeInitial extends CountryCodeState {}

class CountryCodeLoading extends CountryCodeState {}

class CountryCodeLoaded extends CountryCodeState {
  final CountryCode countryCode;

  CountryCodeLoaded({required this.countryCode});

  @override
  List<Object> get props => [countryCode];
}

class CountryCodeError extends CountryCodeState {
  final String message;

  CountryCodeError({required this.message});

  @override
  List<Object> get props => [message];
}
