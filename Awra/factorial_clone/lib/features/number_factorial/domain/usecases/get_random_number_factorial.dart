import 'package:dartz/dartz.dart';
import '../entities/number_factorial.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/number_factorial_repository.dart';


class GetRandomNumberTrivia implements UseCase<NumberFactorial, NoParams> {
  final NumberFactorialRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberFactorial>> call(NoParams params) async {
    return await repository.getRandomNumberFactorial();
  }
}
