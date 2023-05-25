// ignore_for_file: overrid
import '../../../../core/error/failurs.dart';
import 'package:country_code_clone/core/network/network_info.dart';
import 'package:country_code_clone/data/datasources/country_remote_data_source.dart';
import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';

import 'package:dartz/dartz.dart';
import '../../domain//repositories/country_repository.dart';

import '../../../../core/error/failurs.dart';
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
  Future<Either<Failure, CountryCode>> getCountryByCode(String countryCode) async {
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
