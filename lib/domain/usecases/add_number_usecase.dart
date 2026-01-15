import 'package:injectable/injectable.dart';

import '../../data/calculators/string_calculator.dart';

@Injectable()
class AddNumbersUseCase {
  final StringCalculator calculator;

  AddNumbersUseCase({required this.calculator});

  int call(String input) {
    return calculator.add(input);
  }
}
