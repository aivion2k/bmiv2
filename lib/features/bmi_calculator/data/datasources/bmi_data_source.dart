import 'package:bmiv2/features/bmi_calculator/data/models/bmi_model.dart';
import 'package:bmiv2/features/bmi_calculator/domain/usecases/calculate.dart';

abstract class BmiDataSource {
  BmiModel calculate(double height, double weight) {
    var bmiVal = weight / (height * height);
    var bmiType;
    if (bmiVal < 16) {
      bmiType = 'Starvation';
    } else if (bmiVal > 16 && bmiVal < 16.9) {
      bmiType = 'Emaciation';
    } else if (bmiVal > 17 && bmiVal < 18.5) {
      bmiType = 'Underweight';
    } else if (bmiVal > 18.5 && bmiVal < 24.9) {
      bmiType = 'Normal weight';
    } else if (bmiVal > 25 && bmiVal < 29.9) {
      bmiType = 'Overweight';
    } else if (bmiVal > 30 && bmiVal < 34.9) {
      bmiType = 'Obese (Class I)';
    } else if (bmiVal > 35 && bmiVal < 39.9) {
      bmiType = 'Obese (Class II)';
    } else {
      bmiType = 'Obese (Class III)';
    }

    return BmiModel(bmiVal: bmiVal, bmiType: bmiType);
  }
}
