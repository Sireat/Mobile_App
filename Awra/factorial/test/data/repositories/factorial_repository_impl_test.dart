import 'package:factorial/domain/entities/factorial.dart';
import 'package:factorial/domain/repositories/factorial_repository.dart';
import 'package:factorial/domain/use_cases/calculate_factorial_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:mockito/mockito.dart';

class MockFactorialRepository extends Mock implements FactorialRepository {}

void main() {
  late CalculateFactorialUseCase useCase;
  late FactorialRepository repository;

  setUp(() {
    repository = MockFactorialRepository();
    useCase = CalculateFactorialUseCase(repository: repository);
  });

  group('CalculateFactorialUseCase', () {
    test('execute(5) returns 120', () async {
      final number = 5;
      final expectedResult = 120;
      final factorial = Factorial;
