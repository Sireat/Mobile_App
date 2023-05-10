import 'package:factorial/core/entities/number.dart';

class ComputeFactorial {
  int execute(Number number) {
    int factorial = 1;
    for (int i = 1; i <= number.value; i++) {
      factorial *= i;
    }
    return factorial;
  }
}
