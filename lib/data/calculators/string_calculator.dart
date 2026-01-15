class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final sanitized = numbers.replaceAll('\n', ',');

    return sanitized.split(',').map(int.parse).fold(0, (sum, n) => sum + n);
  }
}
