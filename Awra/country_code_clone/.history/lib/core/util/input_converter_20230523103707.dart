import 'package:dartz/dartz.dart';

class InputConverter {
  Either<String, String> validateCountryName(String input) {
    // Trim the input string
    final trimmedInput = input.trim();

    // Check if the input is empty
    if (trimmedInput.isEmpty) {
      return const Left('Country name cannot be empty');
    }

    // Return the validated country name
    return Right(trimmedInput);
  }
}
