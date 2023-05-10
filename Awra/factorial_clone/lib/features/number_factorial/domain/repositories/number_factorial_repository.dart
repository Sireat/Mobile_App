import 'package:dartz/dartz.dart';
import '../entities/number_factorial.dart';
import '../../../../core/error/failures.dart';


abstract class NumberFactorialRepository {
  Future<Either<Failure, NumberFactorial>> getConcreteNumberFactorial(int number);
  Future<Either<Failure, NumberFactorial>> getRandomNumberFactorial();
}
