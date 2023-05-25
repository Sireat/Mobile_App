import 'package:country_code_clone/features/country_code/domain/entities/country_code.dart';
import '../../../../core/error/country_not_found_exception.dart';
import '../repositories/country_repository.dart';

class GetCountryCode {
  final CountryRepository repository;

  GetCountryCode({required this.repository});

  Future<CountryCode> call(String countryName) async {
    final result = await repository.getCountryCode(countryName);
    // ignore: unnecessary_null_comparison
    if (result == null) {
      throw CountryNotFoundException();
    }
    return result.toEntity();
  }
}
