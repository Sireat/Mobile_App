// ignore: depend_on_referenced_packages
import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker, {required Object client});

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
