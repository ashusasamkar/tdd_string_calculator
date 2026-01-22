import 'package:injectable/injectable.dart';

import '../../core/errors/negative_number_exception.dart';

@lazySingleton
class StringCalculator {
  int calculate(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String numbersPart = numbers;

    if (numbers.startsWith('//')) {
      final lines = numbers.split('\n');
      delimiter = lines[0].substring(2);
      numbersPart = lines[1];
    }

    numbersPart = numbersPart.replaceAll('\n', delimiter); // 5*2

    List<int> values = numberParsing(numbersPart, delimiter); //[5,2]

    validateNumbers(values);

    if (delimiter == "*") {
      return multiplication(values);
    }

    return addition(values);
  }

  int addition(List<int> values) => values.fold(0, (sum, n) => sum + n);

  int multiplication(List<int> values) =>
      values.fold(1, (multiple, n) => multiple * n);

  void validateNumbers(List<int> values) {
    final negativeNumbers = values.where((n) => n < 0).toList();
    if (negativeNumbers.isNotEmpty) {
      throw NegativeNumberException(negativeNumbers);
    }
  }

  List<int> numberParsing(String numbersPart, String delimiter) {
    final values = numbersPart.split(delimiter).map(int.parse).toList(); //[5,2]
    return values;
  }
}
