import 'package:factorial/domain/entities/factorial.dart';

abstract class FactorialRepository {
  Future<Factorial> calculateFactorial(int number);
}
