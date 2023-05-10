import 'package:factorial/data/datasources/factorial_datasource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FactorialDatasource datasource;

  setUp(() {
    datasource = FactorialDatasourceImpl();
  });

  group('FactorialDatasource', () {
    test('calculateFactorial(0) returns 1', () async {
      final result = await datasource.calculateFactorial(0);
      expect(result, 1);
    });

    test('calculateFactorial(1) returns 1', () async {
      final result = await datasource.calculateFactorial(1);
      expect(result, 1);
    });

    test('calculateFactorial(5) returns 120', () async {
      final result = await datasource.calculateFactorial(5);
      expect(result, 120);
    });

    test('calculateFactorial(10) returns 3628800', () async {
      final result = await datasource.calculateFactorial(10);
      expect(result, 3628800);
    });
  });
}
