import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../domain/usecases/get_country_code_usecase.dart';
import '../../../../core/error/country_not_found_exception.dart';

import 'country_code_event.dart';
import 'country_code_state.dart';

class CountryCodeBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountryCode getCountryCode;

  CountryCodeBloc({required this.getCountryCode}) : super(CountryInitial());

  @override
  Stream<CountryCodeState> mapEventToState(
    CountryCodeEvent event,
  ) async* {
    if (event is GetCountryCodeEvent) {
      yield CountryCodeLoading();

      final failureOrCountryCode = await getCountryCode(event.countryName);

      yield failureOrCountryCode.fold(
        (failure) => CountryCodeError(message: _mapFailureToMessage(failure)),
        (countryCode) => CountryCodeLoaded(countryCode: countryCode),
      );
    }
  }

  String _mapFailureToMessage(Failure failure) {
    // You can customize the error messages for different failure types here
    if (failure is ServerFailure) {
      return 'Server Failure';
    } else if (failure is NoInternetFailure) {
      return 'No Internet Connection';
    } else {
      return 'Unexpected Error';
    }
  }
}
