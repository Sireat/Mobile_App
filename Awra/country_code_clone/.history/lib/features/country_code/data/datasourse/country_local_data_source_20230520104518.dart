import 'package:country_code_clone/data/models/country_model.dart';

import '../models/country_model.dart';

abstract class CountryLocalDataSource {
  Future<void> cacheCountryCode(CountryModel country);
  Future<CountryModel> getCachedCountryCode();
}
