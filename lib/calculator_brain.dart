import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmmi = 0;

  String calculatebmi() {
    _bmmi = weight / pow(height / 100, 2);
    return _bmmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmmi >= 25) {
      return 'Overweight';
    } else if (_bmmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmmi >= 25) {
      return 'You have a higher than normal body weight. Try to Excercise More.';
    } else if (_bmmi > 18.5) {
      return 'You have a Normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
