import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../domain/usecases/get_country_code_usecase.dart';
import '../../../../core/error/country_not_found_exception.dart';

import 'country_code_event.dart';
import 'country_code_state.dart';

//part 'country_event.dart';
//part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountryCode getCountryCode;

  CountryBloc({required this.getCountryCode}) : super(CountryInitial());

  Stream<CountryState> mapEventToState(
    CountryEvent event,
  ) async* {
    if (event is GetCountryCodeEvent) {
      yield CountryLoading();

      try {
        final country = await getCountryCode(event.countryName);
        yield CountryLoaded(country: countryC);
      } on CountryNotFoundException {
        yield CountryError(errorMessage: 'Country not found');
      } catch (e) {
        yield CountryError(errorMessage: e.toString());
      }
    }
  }
}