import 'package:bmiv2/features/bmi_calculator/domain/entities/enum_bmi.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Bmi extends Equatable {
  final double bmivalue;
  final BmiType bmiType;

  Bmi({@required this.bmivalue, @required this.bmiType})
      : super([bmivalue, bmiType]);
}
