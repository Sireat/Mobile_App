import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../models/number_factorial_model.dart';
import '../../../../core/error/exceptions.dart';



abstract class NumberTriviaRemoteDataSource {
  /// Calls the http://numbersapi.com/{number} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<NumberFactorialModel> getConcreteNumberTrivia(int number);

  /// Calls the http://numbersapi.com/random endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<NumberFactorialModel> getRandomNumberTrivia();
}

class NumberFactorialRemoteDataSourceImpl implements NumberFactorialRemoteDataSource {
  final http.Client client;

  NumberFactorialRemoteDataSourceImpl({required this.client});

  @override
  Future<NumberFactorialModel> getConcreteNumberFactorial(int number) =>
      _getFactorialFromUrl('http://numbersapi.com/$number');

  Future<NumberFactorialModel> getRandomNumberFactorial() =>
      _getFactorialFromUrl('http://numbersapi.com/random');

  Future<NumberFactorialModel> _getFactorialFromUrl(String url) async {
    final response = await client.get(
      url as Uri,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return NumberFactorialModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}