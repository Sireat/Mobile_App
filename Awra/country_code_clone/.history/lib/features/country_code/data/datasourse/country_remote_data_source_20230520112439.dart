
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/error/country_not_found_exception.dart';
import '../../domain/entities/country_code.dart';
import '../models/country_model.dart';
abstract class CountryRemoteDataSource {
  Future<CountryModel> getCountryCode(String countryName);
}
class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final http.Client client;

  CountryRemoteDataSourceImpl({required this.client});

  @override
  Future<CountryModel> getCountryCode(String countryName) async {
    final url = 'https://restcountries.com/v2/name/'; // Replace with the actual API endpoint
    final response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return CountryModel.fromJson(jsonResponse);
    } else {
      throw ServerException(); // Custom exception for server failure
    }
  }
}