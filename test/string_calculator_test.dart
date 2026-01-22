import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_string_calculator/core/errors/negative_number_exception.dart';
import 'package:tdd_string_calculator/data/calculators/string_calculator.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test("Empty string should return 0", () {
    expect(calculator.calculate(''), 0);
  });

  test("Single number returns that number", () {
    expect(calculator.calculate('5'), 5);
  });

  test("Two numbers separated by comma return sum", () {
    expect(calculator.calculate('5,7'), 12);
  });

  test("Sum off any Amount of Numbers separated by commas", () {
    expect(calculator.calculate('1,2,3,4'), 10);
  });

  test('New lines between numbers are allowed', () {
    expect(calculator.calculate('1\n2,3'), 6);
  });

  test('Custom delimiter is supported', () {
    expect(calculator.calculate('//;\n5;2'), 7);
  });

  test("Custom delimiter is supported with *", (){
    expect(calculator.calculate("//*\n2*3"), 6);
  });

  test("Negative number will throw an exception", () {
    expect(
      () => calculator.calculate("5,-2,-3"),
      throwsA(isA<NegativeNumberException>()),
    );
  });
}
