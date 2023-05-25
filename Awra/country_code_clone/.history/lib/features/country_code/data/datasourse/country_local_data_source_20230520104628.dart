
import '../models/country_model.dart';

abstract class CountryLocalDataSource {
  Future<void> cacheCountryCode(CountryModel country);
  Future<CountryModel> getCachedCountryCode();
}
