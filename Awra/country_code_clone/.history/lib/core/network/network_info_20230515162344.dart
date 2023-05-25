// ignore: depend_on_referenced_packages
//import 'package:connectivity/connectivity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
