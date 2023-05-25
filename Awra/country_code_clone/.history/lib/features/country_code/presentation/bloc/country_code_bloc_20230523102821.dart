import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../../core/error/failurs.dart';
import '../../../../core/util/input_converter.dart';
import '../../domain/usecases/get_country_code_usecase.dart';
// ignore: unused_import
import '../../../../core/error/country_not_found_exception.dart';

import 'country_code_event.dart';
import 'country_code_state.dart';

class CountryCodeBloc extends Bloc<CountryCodeEvent, CountryCodeState> {
  final GetCountryCode getCountryCode;
  final InputConverter inputConverter;

  CountryCodeBloc({
    required this.getCountryCode,
    required this.inputConverter,
  }) : super(CountryCodeInitial());

  @override
  Stream<CountryCodeState> mapEventToState(
    CountryCodeEvent event,
  ) async* {
    if (event is GetCountryCodeEvent) {
      final inputEither = inputConverter.  Either<String, String> validateCountryName(String input) {
(event.countryName);

      yield* inputEither.fold(
        (failure) async* {
          yield CountryCodeError(message: _mapFailureToMessage(failure));
        },
        (countryCode) async* {
          yield CountryCodeLoading();

          final failureOrCountry = await getCountryCode(
            Params(countryCode: countryCode),
          );

          yield failureOrCountry.fold(
            (failure) => CountryCodeError(message: _mapFailureToMessage(failure)),
            (country) => CountryCodeLoaded(country: country, countryCode: countryCode),
          );
        },
      );
    }
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure is InvalidInputFailure) {
      return 'Invalid Input - Please enter a valid country name';
    } else if (failure is ServerFailure) {
      return 'Server Failure';
    } else if (failure is CacheFailure) {
      return 'Cache Failure';
    } else {
      return 'Unexpected Error';
    }
  }
}