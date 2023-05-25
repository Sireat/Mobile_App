
import 'package:dartz/dartz.dart';

import '../../../../core/error/failurs.dart';

abstract class CountryRepository {
  Future<Either<Failure, String>> getCountryCode(String countryName);
}
