class NegativeNumberException implements Exception {
  final List<int> negatives;

  NegativeNumberException(this.negatives);

  String get message => 'Negative numbers not allowed ${negatives.join(',')}';

  @override
  String toString() => message;
}
