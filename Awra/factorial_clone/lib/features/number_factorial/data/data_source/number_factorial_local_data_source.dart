import 'dart:convert';
import 'package:meta/meta.dart';
import '../models/number_factorial_model.dart';
import 'package:factorial_clone/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';



abstract class NumberFactorialLocalDataSource {
  /// Gets the cached [NumberFactorialModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<NumberFactorialModel> getLastNumberFactorial();

  Future<void> cacheNumberFactorial(NumberFactorialModel factorialToCache);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberFactorialLocalDataSourceImpl implements NumberFactorialLocalDataSource {
  final SharedPreferences sharedPreferences;

  NumberFactorialLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<NumberFactorialModel> getLastNumberFactorial() {
    final jsonString = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString != null) {
      return Future.value(NumberFactorialModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheNumberFactorial(NumberFactorialModel factorialToCache) {
    return sharedPreferences.setString(
      CACHED_NUMBER_TRIVIA,
      json.encode(factorialToCache.toJson()),
    );
  }
}
