import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/domain/repositories/number_factorial_repository.dart';
import 'package:factorial_clone/features/number_factorial/domain/usecases/get_concrete_number_factorial.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberFactorialRepository extends Mock implements NumberFactorialRepository {}

void main() {
  GetConcreteNumberFactorial usecase;
  MockNumberFactorialRepository mockNumberFactorialRepository;

  setUp(() {
    mockNumberFactorialRepository = MockNumberFactorialRepository();
    usecase = GetConcreteNumberFactorial(mockNumberFactorialRepository);
  });

  final tNumber = 1;
  final tNumberTrivia = NumberFactorial(number: 1, text: 'test');

  test(
    'should get trivia for the number from the repository',
    () async {
      // arrange
      when(mockNumberFactorialRepository.getConcreteNumberFactorial(any))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // act
      final result = await usecase(Params(number: tNumber));
      // assert
      expect(result, Right(tNumberTrivia));
      verify(mockNumberFactorialRepository.getConcreteNumberFactorial(tNumber));
      verifyNoMoreInteractions(mockNumberFactorialRepository);
    },
  );
}