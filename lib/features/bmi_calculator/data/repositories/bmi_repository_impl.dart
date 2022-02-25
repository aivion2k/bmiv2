import 'package:bmiv2/features/bmi_calculator/data/datasources/bmi_data_source.dart';
import 'package:bmiv2/features/bmi_calculator/domain/entities/bmi.dart';
import 'package:bmiv2/core/error/failures.dart';
import 'package:bmiv2/features/bmi_calculator/domain/repositories/bmi_repository.dart';
import 'package:dartz/dartz.dart';

class BmiRepositoryImplementation implements BmiRepository {
  final BmiDataSource bmiDataSource;

  BmiRepositoryImplementation(this.bmiDataSource);

  @override
  Bmi calculate(double height, double weight) {
    final bmi = bmiDataSource.calculate(height, weight);
    return bmi;
  }
}
