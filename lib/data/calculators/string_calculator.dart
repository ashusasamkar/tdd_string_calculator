import 'package:injectable/injectable.dart';

import '../../core/errors/negative_number_exception.dart';

@lazySingleton
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String numbersPart = numbers;

    if (numbers.startsWith('//')) {
      final lines = numbers.split('\n');
      delimiter = lines[0].substring(2);
      numbersPart = lines[1];
    }

    numbersPart = numbersPart.replaceAll('\n', delimiter);

    final values = numbersPart.split(delimiter).map(int.parse).toList();

    final negativeNumbers = values.where((n) => n < 0).toList();
    if (negativeNumbers.isNotEmpty) {
      throw NegativeNumberException(negativeNumbers);
    }

    return values.fold(0, (sum, n) => sum + n);
  }
}
