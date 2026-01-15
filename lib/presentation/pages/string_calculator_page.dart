import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/string_calculator_cubit.dart';

class StringCalculatorPage extends StatelessWidget {
  StringCalculatorPage({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('String Calculator (TDD)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              maxLines: null,
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter numbers',
                hintText: 'e.g. 1,2,3 or 1\n2,3 or //;\n1;2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<StringCalculatorCubit>().calculate(
                  _controller.text,
                );
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 24),
            BlocBuilder<StringCalculatorCubit, StringCalculatorState>(
              builder: (context, state) {
                if (state is StringCalculatorSuccess) {
                  return Text(
                    'Result: ${state.result}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  );
                } else if (state is StringCalculatorError) {
                  return Text(
                    state.message,
                    style: const TextStyle(fontSize: 16, color: Colors.red),
                  );
                }
                return const Text(
                  'Enter input and press Calculate',
                  style: TextStyle(color: Colors.grey),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
