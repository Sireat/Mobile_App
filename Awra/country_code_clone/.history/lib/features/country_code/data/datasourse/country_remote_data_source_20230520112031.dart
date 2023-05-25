
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/error/country_not_found_exception.dart';
import '../../domain/entities/country_code.dart';
import '../models/country_model.dart';

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

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final http.Client client;

  CountryRemoteDataSourceImpl({required this.client});

  @override
  Future<CountryModel> getCountryCode(String countryName) async {
    final url = 'YOUR_API_ENDPOINT'; // Replace with the actual API endpoint
    final response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return CountryModel.fromJson(jsonResponse);
    } else {
      throw ServerException(); // Custom exception for server failure
    }
  }
}