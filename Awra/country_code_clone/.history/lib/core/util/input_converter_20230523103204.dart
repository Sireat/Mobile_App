import 'package:dartz/dartz.dart';

class InputConverter {
  int stringToUnsignedInteger(String str) {
    // Convert the string to an integer value
    int? value = int.tryParse(str);

    // Check if the value is positive
    if (value != null && value >= 0) {
      return value;
    } else {
      throw InvalidInputException();
    }
  }
}
class InvalidInputException implements Exception {
  final String message = 'Invalid input';

  @override
  String toString() => message;
}
