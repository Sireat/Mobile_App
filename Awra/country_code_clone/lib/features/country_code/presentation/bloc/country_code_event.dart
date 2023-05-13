//part of 'country_bloc.dart';

import 'package:flutter/cupertino.dart';

@immutable
abstract class CountryEvent {}

class GetCountryCodeEvent extends CountryEvent {
  final String countryName;

  GetCountryCodeEvent({required this.countryName});
}
