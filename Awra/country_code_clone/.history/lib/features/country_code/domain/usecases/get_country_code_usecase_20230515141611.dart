import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';
import '../../../../core/error/country_not_found_exception.dart';
import '../repositories/country_repository.dart';

class GetCountryCode implements UseCase<CountryCode, String> {
  final CountryRepository repository;

  GetCountryCode({required this.repository});

  @override
  Future<Either<Failure, CountryCode>> call(String countryName) async {
    return await repository.getCountryCode(countryName);
  }
}
