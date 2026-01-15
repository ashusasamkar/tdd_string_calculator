part of 'string_calculator_cubit.dart';

@immutable
sealed class StringCalculatorState {}

final class StringCalculatorInitial extends StringCalculatorState {}

final class StringCalculatorSuccess extends StringCalculatorState {
  final int result;
  StringCalculatorSuccess(this.result);
}

final class StringCalculatorError extends StringCalculatorState {
  final String message;
  StringCalculatorError(this.message);
}
