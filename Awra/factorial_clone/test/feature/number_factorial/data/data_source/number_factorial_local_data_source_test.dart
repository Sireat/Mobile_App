import 'dart:convert';
import 'package:mockito/mockito.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'package:factorial_clone/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:factorial_clone/features/number_factorial/data/models/number_factorial_model.dart';
import 'package:factorial_clone/features/number_factorial/data/data_source/number_factorial_local_data_source.dart';
//import 'package:factorial_clone/features/number_factorial/data/datasource/number_factorial_local_data_source.dart';



class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  NumberFactorialLocalDataSourceImpl dataSource;
  MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = NumberFactorialLocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });

  group('getLastNumberTrivia', () {
    final tNumberFactorialModel =
        NumberFactorialModel.fromJson(json.decode(fixture('factorial_cached.json')));

    test(
      'should return NumberFactorial from SharedPreferences when there is one in the cache',
      () async {
        // arrange
        when(mockSharedPreferencesFactorial.getString(any))
            .thenReturn(fixture('factorial_cached.json'));
        // act
        final result = await dataSource.getLastNumberTrivia();
        // assert
        verify(mockSharedPreferences.getString(CACHED_NUMBER_FACTORIAL));
        expect(result, equals(tNumberTriviaModel));
      },
    );

    test(
      'should throw a CacheExeption when there is not a cached value',
      () async {
        // arrange
        when(mockSharedPreferences.getString(any)).thenReturn(null);
        // act
        final call = dataSource.getLastNumberTrivia;
        // assert
        expect(() => call(), throwsA(TypeMatcher<CacheException>()));
      },
    );
  });

  group('cacheNumberTrivia', () {
    final tNumberFactorialModel =
        NumberFactorialModel(number: 1, text: 'test trivia');

    test(
      'should call SharedPreferences to cache the data',
      () async {
        // act
        dataSource.cacheNumberFactorial(tNumberFactorialModel);
        // assert
        final expectedJsonString = json.encode(tNumberFactorialModel.toJson());
        verify(mockSharedPreferences.setString(
          CACHED_NUMBER_FACTORIAL,
          expectedJsonString,
        ));
      },
    );
  });
}
