import 'package:factorial_clone/core/usecases/usecase.dart';
import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/domain/repositories/number_factorial_repository.dart';
import 'package:factorial_clone/features/number_factorial/domain/usecases/get_concrete_number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/domain/usecases/get_random_number_factorial.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberFactorialRepository {}

void main() {
  GetRandomNumberFactorial usecase;
  MockNumberTriviaRepository mockNumberFactorialRepository;

  setUp(() {
    mockNumberFactorialRepository = MockNumberFactorialRepository();
    usecase = GetRandomNumberFactorial(mockNumberFactorialRepository);
  });

  final tNumberTrivia = NumberFactorial(number: 1, text: 'test');

  test(
    'should get trivia from the repository',
    () async {
      // arrange
      when(mockNumberFactorialRepository.getRandomNumberFactorial())
          .thenAnswer((_) async => Right(tNumberFactorial));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, Right(tNumberTrivia));
      verify(mockNumberFactorialRepository.getRandomNumberFactorial());
      verifyNoMoreInteractions(mockNumberFactorialRepository);
    },
  );
}
