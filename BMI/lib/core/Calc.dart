import 'dart:ffi';

class BMICalculator {

  BMICalculator();

  double Calc({height, weight}) {
    height /= 100;
    int res = (weight / (height * height) * 10).round();
    return res / 10;
  }

  String State({number}) {
    if (number < 18.5)
      return "Underweight";
    else if (number >= 18.5 && number <= 24.9)
      return "Normal";
    else if (number >= 25.0 && number <= 29.9)
      return "Overweight";
    else if (number >= 30.0 && number <= 34.9)
      return "Obesity class |";
    else if (number >= 35.0 && number <= 39.9)
      return "Obesity class ||";
    else if (number >= 40) return "Obesity class |||";
    return "";
  }
}
