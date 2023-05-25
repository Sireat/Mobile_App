import 'package:dartz/dartz.dart';

import '../error/failurs.dart';

class InputConverter {
  Either<Failure, String> stringToCountryCode(String str) {
    if (str == null) {
      return Left(InvalidInputFailure());
    }
    final regex = RegExp(r'^[A-Z]{2}$');
    if (regex.hasMatch(str)) {
      return Right(str.toUpperCase());
    } else {
      return Left(InvalidCountryCodeFailure());
    }
  }
}

class InvalidInputFailure extends Failure {}

class InvalidCountryCodeFailure extends Failure {}
