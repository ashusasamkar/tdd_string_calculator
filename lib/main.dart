import 'package:flutter/material.dart';
import 'package:tdd_string_calculator/presentation/pages/string_calculator_page.dart';

void main() {
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
      home: StringCalculatorPage(),
    );
  }
}
