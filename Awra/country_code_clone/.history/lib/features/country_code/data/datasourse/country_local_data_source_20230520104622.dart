
import 'dart:convert';

import '../models/country_model.dart';

abstract class CountryLocalDataSource {
  Future<void> cacheCountryCode(CountryModel country);
  Future<CountryModel> getCachedCountryCode();
}
import 'package:country_code_clone/data/models/country_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountryLocalDataSourceImpl implements CountryLocalDataSource {
  final SharedPreferences sharedPreferences;

  CountryLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheCountryCode(CountryModel country) async {
    final countryCode = country.toJson();
    await sharedPreferences.setString('country_code', json.encode(countryCode));
  }

  @override
  Future<CountryModel> getCachedCountryCode() async {
    final jsonString = sharedPreferences.getString('country_code');
    if (jsonString != null) {
      final countryCode = json.decode(jsonString);
      return CountryModel.fromJson(countryCode);
    } else {
      throw CacheException(); // Custom exception for cache failure
    }
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'sharedPreferences': sharedPreferences.toMap()});
  
    return result;
  }

  factory CountryLocalDataSourceImpl.fromMap(Map<String, dynamic> map) {
    return CountryLocalDataSourceImpl(
      sharedPreferences: SharedPreferences.fromMap(map['sharedPreferences']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryLocalDataSourceImpl.fromJson(String source) => CountryLocalDataSourceImpl.fromMap(json.decode(source));
}
