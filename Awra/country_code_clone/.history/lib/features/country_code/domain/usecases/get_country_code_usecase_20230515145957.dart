import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';
import 'package:dartz/dartz.dart';
// ignore: unused_import
import '../../../../core/error/country_not_found_exception.dart';
import '../../../../core/error/failurs.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/country_repository.dart';

class GetCountryCode implements UseCase<CountryCode, String> {
  final CountryRepository repository;

  GetCountryCode(Object object, {required this.repository});

  @override
  Future<Either<Failure, CountryCode>> call(String countryName) async {
    return await repository.getCountryCode(countryName);
  }
}
