// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tdd_string_calculator/data/calculators/string_calculator.dart'
    as _i1013;
import 'package:tdd_string_calculator/domain/usecases/add_number_usecase.dart'
    as _i655;
import 'package:tdd_string_calculator/presentation/cubit/string_calculator_cubit.dart'
    as _i839;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i1013.StringCalculator>(() => _i1013.StringCalculator());
    gh.factory<_i655.AddNumbersUseCase>(
      () => _i655.AddNumbersUseCase(calculator: gh<_i1013.StringCalculator>()),
    );
    gh.factory<_i839.StringCalculatorCubit>(
      () => _i839.StringCalculatorCubit(gh<_i655.AddNumbersUseCase>()),
    );
    return this;
  }
}
