import 'package:country_code_clone/data/models/country_model.dart';

abstract class CountryRemoteDataSource {
  Future<CountryModel> getCountryCode(String countryName);
}
