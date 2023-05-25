
import '../entities/country_code.dart';

abstract class CountryRepository {
  Future<Either<Failure, CountryCode>> getCountryCode(String countryName);
}