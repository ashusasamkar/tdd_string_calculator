import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'string_calculator_state.dart';

@Injectable()
class StringCalculatorCubit extends Cubit<StringCalculatorState> {
  StringCalculatorCubit() : super(StringCalculatorInitial());
}
