import 'package:factorial/domain/entities/factorial.dart';
import 'package:factorial/domain/repositories/factorial_repository.dart';

class CalculateFactorialUseCase {
  final FactorialRepository repository;

  CalculateFactorialUseCase({required this.repository});

  Future<int> execute(int number) async {
    final factorial = await repository.calculateFactorial(number);
    return factorial.result;
  }
}
