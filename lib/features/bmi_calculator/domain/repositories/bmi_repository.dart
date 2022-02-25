import 'package:bmiv2/core/error/failures.dart';
import 'package:bmiv2/features/bmi_calculator/domain/entities/bmi.dart';
import 'package:dartz/dartz.dart';

abstract class BmiRepository {
  Bmi calculate(double height, double weight);
}
