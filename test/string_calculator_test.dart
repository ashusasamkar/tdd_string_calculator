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

  test("Single number returns that number", () {
    expect(calculator.add('5'), 5);
  });

  test("Two numbers separated by comma return sum", () {
    expect(calculator.add('5,7'), 12);
  });

  test("Sum off any Amount of Numbers separated by commas", () {
    expect(calculator.add('1,2,3,4'), 10);
  });

  test('New lines between numbers are allowed', () {
    expect(calculator.add('1\n2,3'), 6);
  });

  test('Custom delimiter is supported', () {
    expect(calculator.add('//;\n5;2'), 7);
  });
}
