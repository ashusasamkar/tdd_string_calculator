import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_string_calculator/data/calculators/string_calculator.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test("Empty string should return 0", () {
    expect(calculator.add(''), 0);
  });
}
