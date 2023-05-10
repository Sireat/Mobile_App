import 'package:meta/meta.dart';
import 'package:factorial_clone/features/number_factorial/domain/entities/number_factorial.dart';
// ignore_for_file: depend_on_referenced_packages


class NumberFactorialModel extends NumberFactorial {
  NumberFactorialModel({
    required String text,
    required int number,
  }) : super(text: text, number: number);

  factory NumberFactorialModel.fromJson(Map<String, dynamic> json) {
    return NumberFactorialModel(
      text: json['text'],
      number: (json['number'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'number': number,
    };
  }
}
