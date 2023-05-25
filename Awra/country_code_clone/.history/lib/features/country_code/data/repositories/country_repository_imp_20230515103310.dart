import 'package:country_code_clone/core/error/failures.dart';
import 'package:country_code_clone/core/network/network_info.dart';
import 'package:country_code_clone/data/datasources/country_remote_data_source.dart';
import 'package:country_code_clone/domain/entities/country.dart';
import 'package:country_code_clone/domain/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';

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
  Future<Either<Failure, Country>> getCountryByCode(String countryCode) async {
    if (await networkInfo.isConnected()) {
      try {
        final country = await remoteDataSource.getCountryByCode(countryCode);
        return Right(country);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetFailure());
    }
  }
}
