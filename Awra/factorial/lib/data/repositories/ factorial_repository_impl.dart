import 'package:factorial/data/datasources/factorial_datasource.dart';
import 'package:factorial/domain/entities/factorial.dart';
import 'package:factorial/domain/repositories/factorial_repository.dart';

class FactorialRepositoryImpl implements FactorialRepository {
  final FactorialDatasource datasource;

  FactorialRepositoryImpl({required this.datasource});

  @override
  Future<Factorial> calculateFactorial(int number) async {
    final result = await datasource.calculateFactorial(number);
    return Factorial(number, result);
  }
}
