//part of 'country_bloc.dart';

import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class CountryState {}

class CountryInitial extends CountryState {}

class CountryLoading extends CountryState {}

class CountryLoaded extends CountryState {
  final CountryCode country;

  CountryLoaded({required this.country, required CountryCode countryCode});
}

class CountryError extends CountryState {
  final String errorMessage;

  CountryError({required this.errorMessage, required String message});
}
