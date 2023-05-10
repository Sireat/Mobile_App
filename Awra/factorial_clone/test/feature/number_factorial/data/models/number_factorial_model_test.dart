import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import '../../../../fixtures/fixture_reader.dart';
import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/data/models/number_factorial_model.dart';




void main() {
  final tNumberFactorialModel = NumberFactorialModel(number: 1, text: 'Test Text');

  test(
    'should be a subclass of NumberFactorial entity',
    () async {
      // assert
      expect(tNumberFactorialModel, isA<NumberFactorial>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when the JSON number is an integer',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('factorial.json'));
        // act
        final result = NumberFactorialModel.fromJson(jsonMap);
        // assert
        expect(result, tNumberFactorialModel);
      },
    );

    test(
      'should return a valid model when the JSON number is regarded as a double',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('factorial_double.json'));
        // act
        final result = NumberFactorialModel.fromJson(jsonMap);
        // assert
        expect(result, tNumberFactorialModel);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tNumberFactorialModel.toJson();
        // assert
        final expectedMap = {
          "text": "Test Text",
          "number": 1,
        };
        expect(result, expectedMap);
      },
    );
  });
}
