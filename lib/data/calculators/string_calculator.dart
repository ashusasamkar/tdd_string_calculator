class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String numbersPart = numbers;

    if (numbers.startsWith('//')) {
      final lines = numbers.split('\n');
      delimiter = lines[0].substring(2);
      numbersPart = lines[1];
    }

    numbersPart = numbersPart.replaceAll('\n', delimiter);

    return numbersPart
        .split(delimiter)
        .map(int.parse)
        .fold(0, (sum, n) => sum + n);
  }
}
