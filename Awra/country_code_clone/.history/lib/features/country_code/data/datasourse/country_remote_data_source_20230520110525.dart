
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/error/country_not_found_exception.dart';
import '../../domain/entities/country_code.dart';
import '../models/country_model.dart';
abstract class CountryRemoteDataSource {
  Future<CountryModel> getCountryCode(String countryName);
}

abstract class CountryRemoteDataSource {
  static const _baseUrl = 'https://restcountries.com/v2/name/';

  Future<CountryCode> getCountryCode(String countryName) async {
    final response = await http.get(Uri.parse(_baseUrl + countryName));
    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body)[0];
      final countryModel = CountryModel.fromJson(decodedJson);
      return countryModel.toEntity();
    } else if (response.statusCode == 404) {
      throw CountryNotFoundException();
    } else {
      throw Exception('Failed to get country code');
    }
  }
}
