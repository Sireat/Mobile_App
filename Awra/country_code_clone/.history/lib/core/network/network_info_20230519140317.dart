import 'dart:convert';

import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'connectionChecker': connectionChecker.toMap()});
  
    return result;
  }

  factory NetworkInfoImpl.fromMap(Map<String, dynamic> map) {
    return NetworkInfoImpl(
      DataConnectionChecker.fromMap(map['connectionChecker']),
    );
  }

  String toJson() => json.encode(toMap());

  factory NetworkInfoImpl.fromJson(String source) => NetworkInfoImpl.fromMap(json.decode(source));
}
