import 'package:bmiv2/features/bmi_calculator/domain/entities/bmi.dart';
import 'package:bmiv2/features/bmi_calculator/domain/entities/enum_bmi.dart';
import 'package:flutter/cupertino.dart';

class BmiModel extends Bmi {
  BmiModel({
    @required double bmiVal,
    @required BmiType bmiType,
  }) : super(bmivalue: bmiVal, bmiType: bmiType);
}
