
import '../entities/country_code.dart';

abstract class CountryRepository {
  Future<CountryCode> getCountryCode(String countryName);
}
