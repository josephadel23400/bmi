import 'dart:math';

class CalculatorBmi {
  int? height;
  int? weight;
  double? _bmi;
  CalculatorBmi({required this.weight, required this.height});

  String calculate() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'you are تخين فشخ خف ام اكل شويه يا عم';
    } else if (_bmi! > 18.5) {
      return 'you are تماموز يا معلم';
    } else {
      return 'you are كتر اكل يا عم متعرناش ';
    }
  }
}
