
import '../../../../core/error/country_not_found_exception.dart';
import '../models/country_model.dart';
import 'dart:convert';

import 'package:country_code_clone/core/error/exceptions.dart';
import 'package:http/http.dart' as http;

import '../../domain/entities/country_code.dart';

abstract class CountryRemoteDataSource {
  Future<CountryModel> getCountryCode(String countryName);
}

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final http.Client client;

  CountryRemoteDataSourceImpl({required this.client});

  @override
  Future<CountryModel> getCountryCode(String countryName) async {
    final response = await client.get(Uri.parse('API_URL/countries/$countryName'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return CountryModel.fromJson(jsonData);
    } else {
      throw ServerException();
    }
  }
}
