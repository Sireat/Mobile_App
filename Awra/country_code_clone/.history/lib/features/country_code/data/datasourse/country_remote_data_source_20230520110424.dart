
import '../models/country_model.dart';

abstract class CountryRemoteDataSource {
  Future<CountryModel> getCountryCode(String countryName);
}
