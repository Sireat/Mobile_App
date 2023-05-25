import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../../core/error/failurs.dart';
import '../../domain/usecases/get_country_code_usecase.dart';
// ignore: unused_import
import '../../../../core/error/country_not_found_exception.dart';

import 'country_code_event.dart';
import 'country_code_state.dart';

class CountryCodeBloc extends Bloc<CountryCodeEvent, CountryCodeState> {
  final GetCountryCode getCountryCode;

  CountryCodeBloc({required this.getCountryCode}) : super(CountryCodeInitial());

  // ignore: override_on_non_overriding_member
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
    if (failure is ServerFailure) {
      return 'Server Failure';
    } else if (failure is NoInternetFailure) {
      return 'No Internet Connection';
    } else {
      return 'Unexpected Error';
    }
  }
<<<<<<< HEAD
}
=======
}



>>>>>>> 6490ad2d5700379342178ae2444297c435fb0da9
