import 'dart:async';
import './bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/util/input_converter.dart';
import 'package:factorial_clone/core/error/failures.dart';
import 'package:factorial_clone/core/usecases/usecase.dart';
import '../../domain/usecases/get_random_number_factorial.dart';
import '../../domain/usecases/get_concrete_number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';
import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';




const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaBloc extends Bloc<NumberFactorialEvent, NumberFactorialState> {
  final GetConcreteNumberFactorial getConcreteNumberFactorial;
  final GetRandomNumberFactorial getRandomNumberFactorial;
  final InputConverter inputConverter;

  NumberFactorialBloc({
    @required GetConcreteNumberFactorial concrete,
    @required GetRandomNumberFactorial random,
    @required this.inputConverter,
  })  : assert(concrete != null),
        assert(random != null),
        assert(inputConverter != null),
        getConcreteNumberTrivia = concrete,
        getRandomNumberTrivia = random;

  @override
  NumberFactorialState get initialState => Empty();

  @override
  Stream<NumberFactorialState> mapEventToState(
    NumberFactorialEvent event,
  ) async* {
    if (event is GetFactorialForConcreteNumber) {
      final inputEither =
          inputConverter.stringToUnsignedInteger(event.numberString);

      yield* inputEither.fold(
        (failure) async* {
          yield Error(message: INVALID_INPUT_FAILURE_MESSAGE);
        },
        (integer) async* {
          yield Loading();
          final failureOrTrivia =
              await getConcreteNumberFactorial(Params(number: integer));
          yield* _eitherLoadedOrErrorState(failureOrTrivia);
        },
      );
    } else if (event is GetFactorialForRandomNumber) {
      yield Loading();
      final failureOrTrivia = await getRandomNumberFactorial(NoParams());
      yield* _eitherLoadedOrErrorState(failureOrFactorial);
    }
  }

  Stream<NumberFactorialState> _eitherLoadedOrErrorState(
    Either<Failure, NumberFactorial> failureOrFactorial,
  ) async* {
    yield failureOrTrivia.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (trivia) => Loaded(trivia: trivia),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
