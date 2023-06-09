import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List<dynamic> properties;

  Failure([this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NoInternetFailure extends Failure {}

// Specific failures
class InvalidInputFailure extends Failure {}

class InvalidCountryCodeFailure extends Failure {}
