import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/usecases/add_number_usecase.dart';

part 'string_calculator_state.dart';

@Injectable()
class StringCalculatorCubit extends Cubit<StringCalculatorState> {
  final AddNumbersUseCase useCase;

  StringCalculatorCubit(this.useCase) : super(StringCalculatorInitial());

  void calculate(String input) {
    try {
      final result = useCase(input);
      emit(StringCalculatorSuccess(result));
    } catch (e) {
      emit(StringCalculatorError(e.toString()));
    }
  }
}
