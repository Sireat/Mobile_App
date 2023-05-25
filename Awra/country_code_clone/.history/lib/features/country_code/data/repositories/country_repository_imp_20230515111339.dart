import 'package:country_code_clone/core/network/network_info.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failurs.dart';
import '../../domain/repositories/country_repository.dart';
import '../datasourse/country_remote_data_source.dart';

abstract class CountryRemoteDataSource {
  Future<String> getCountryCode(String countryName);
}

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final http.Client client;

  CountryRemoteDataSourceImpl({required this.client});

  @override
  Future<String> getCountryCode(String countryName) async {
    final url = Uri.parse('https://api.example.com/countries?name=$countryName');

    final response = await client.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final countryCode = jsonResponse['countryCode'];
      return countryCode;
    } else {
      throw ServerException();
    }
  }
}
