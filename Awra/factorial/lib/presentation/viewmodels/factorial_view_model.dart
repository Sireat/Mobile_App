import 'package:factorial/core/entities/number.dart';
import 'package:factorial/core/usecases/compute_factorial.dart';
import 'package:factorial/data/repositories/%20factorial_repository_impl.dart';
import 'package:flutter/material.dart';

class FactorialViewModel extends ChangeNotifier {
  int? _result;
  bool _loading = false;
  String _error = '';

  int? get result => _result;
  bool get loading => _loading;
  String get error => _error;

  Future<void> computeFactorial(int value) async {}
}
