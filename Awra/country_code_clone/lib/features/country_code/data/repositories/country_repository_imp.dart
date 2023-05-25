import 'package:country_code_clone/core/network/network_info.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failurs.dart';
import '../../domain/entities/country_code.dart';
import '../../domain/repositories/country_repository.dart';
import '../datasourse/country_remote_data_source.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CountryRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, CountryCode>> getCountryCode(String countryName) async {
    if (await networkInfo.isConnected()) {
      try {
        final countryCode = await remoteDataSource.getCountryCode(countryName);
        return Right(countryCode as CountryCode);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetFailure());
    }
  }
}