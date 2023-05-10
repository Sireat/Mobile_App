import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../entities/number_factorial.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/number_factorial_repository.dart';


class GetConcreteNumberTrivia implements UseCase<NumberFactorial, Params> {
  final NumberFactorialRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberFactorial>> call(Params params) async {
    return await repository.getConcreteNumberFactorial(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number});

  @override
  List<Object> get props => [number];
}
