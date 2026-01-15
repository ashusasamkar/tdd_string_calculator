import 'package:flutter/material.dart';

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
            ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
            const SizedBox(height: 24),
            Text(
              'Result: ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
