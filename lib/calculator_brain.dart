import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final double weight;
  final double height;
  double _bmi;
  String BMICalc() {
    _bmi = weight / pow(height * 0.01, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBodyType() {
    if (_bmi > 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String giveInterpretation() {
    if (_bmi > 25)
      return 'You have a higher than normal body weight.Try to exercise more!';
    else if (_bmi > 18.5)
      return 'You have a normal body weight.   Good Job!';
    else
      return 'You have a lower than normal body weight.Try to eat more!';
  }
}
