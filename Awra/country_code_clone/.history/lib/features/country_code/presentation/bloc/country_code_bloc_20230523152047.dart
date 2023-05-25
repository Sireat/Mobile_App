import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/error/failurs.dart';
import '../../../../core/util/input_converter.dart';
import '../../domain/usecases/get_country_code_usecase.dart';
// ignore: unused_import
import '../../../../core/error/country_not_found_exception.dart';

import 'country_code_event.dart';
import 'country_code_state.dart';

class CountryCodeBloc extends Bloc<CountryCodeEvent, CountryCodeState> {
  final InputConverter inputConverter;
  final String getCountryCode;

  CountryCodeBloc({
    required this.inputConverter,
    required this.getCountryCode,
    required String country
  })  : super(CountryCodeInitial());


    Stream<CountryCodeState> mapEventToState(
    CountryCodeEvent event,
  ), super(null) async* {
    if (event is GetCountryCodeEvent) {
      yield CountryCodeLoading();

      final failureOrCountryCode = await getCountryCode(event.countryName);
   Stream<CountryCodeState> mapEventToState(
    CountryCodeEvent event,
  ), super(null) async* {
    if (event is GetCountryCodeEvent) {
      yield CountryCodeLoading();

      yield failureOrCountryCode.fold(
        (failure) => CountryCodeError(message: _mapFailureToMessage(failure)),
        (countryCode) => CountryCodeLoaded(countryCode: countryCode),
      );
    }
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server Failure';
    } else if (failure is NoInternetFailure) {
      return 'No Internet Connection';
    } else {
      return 'Unexpected Error';
    }
  }
}
