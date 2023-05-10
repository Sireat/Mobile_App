import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/number_factorial.dart';
import '../data_source/number_factorial_local_data_source.dart';
import '../datasources/number_factorial_local_data_source.dart';
import '../datasources/number_factorial_remote_data_source.dart';
import '../../domain/repositories/number_factorial_repository.dart';


typedef Future<NumberFactorial> _ConcreteOrRandomChooser();

class NumberFactorialRepositoryImpl implements NumberFactorialRepository {
  final NumberFactorialRemoteDataSource remoteDataSource;
  final NumberFactorialLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberFactorialRepositoryImpl({
    @required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberFactorial>> getConcreteNumberFactorial(
    int number,
  ) async {
    return await _getFactorial(() {
      return remoteDataSource.getConcreteNumberTrivia(number);
    });
  }

  @override
  Future<Either<Failure, NumberFactorial>> getRandomNumberFactorial() async {
    return await _getFactorial(() {
      return remoteDataSource.getRandomNumberTrivia();
    });
  }

  Future<Either<Failure, NumberFactorial>> _getTrivia(
    _ConcreteOrRandomChooser getConcreteOrRandom,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await getConcreteOrRandom();
        localDataSource.cacheNumberFactorial(remoteFactorial);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberFactorial();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
