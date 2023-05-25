
import '../entities/country_code.dart';
import '../repositories/country_repository.dart';

class GetCountryCode implements UseCase<CountryCode, String> {
  final CountryRepository repository;

  GetCountryCode(Object object, {required this.repository});

  Future<Either<Failure, CountryCode>> call(String countryName) async {
    return await repository.getCountryCode(countryName);
  }
}
