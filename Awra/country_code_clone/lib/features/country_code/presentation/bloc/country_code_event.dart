import 'package:equatable/equatable.dart';
//part of 'country_code_bloc.dart';

abstract class CountryCodeEvent extends Equatable {
  const CountryCodeEvent();

  @override
  List<Object> get props => [];
}

class GetCountryCodeEvent extends CountryCodeEvent {
  final String countryName;

  const GetCountryCodeEvent(this.countryName);

  @override
  List<Object> get props => [countryName];
}
