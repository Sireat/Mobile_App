abstract class FactorialDatasource {
  Future<int> calculateFactorial(int number);
}

class FactorialDatasourceImpl implements FactorialDatasource {
  @override
  Future<int> calculateFactorial(int number) async {
    if (number == 0) {
      return 1;
    } else {
      return number * await calculateFactorial(number - 1);
    }
  }
}
