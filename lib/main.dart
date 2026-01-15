import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tdd_string_calculator/presentation/cubit/string_calculator_cubit.dart';
import 'package:tdd_string_calculator/presentation/pages/string_calculator_page.dart';

import 'core/di/injection.dart';


void main() {
  configureDependencies();
  runApp(const StringCalculatorApp());
}

class StringCalculatorApp extends StatelessWidget {
  const StringCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'String Calculator TDD Kata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (context) => GetIt.I<StringCalculatorCubit>(),
        child: StringCalculatorPage(),
      ),
    );
  }
}
