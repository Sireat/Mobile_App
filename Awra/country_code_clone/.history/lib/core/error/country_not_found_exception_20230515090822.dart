
class CountryNotFoundException implements Exception {
  final String message;

  CountryNotFoundException({this.message = 'Country not found'});

  @override
  String toString() => 'CountryNotFoundException: $message';
}
