import 'package:bmiv2/core/error/failures.dart';
import 'package:bmiv2/core/usecases/usecase.dart';
import 'package:bmiv2/features/bmi_calculator/domain/entities/bmi.dart';
import 'package:bmiv2/features/bmi_calculator/domain/repositories/bmi_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Calculate implements UseCase<Bmi, Params> {
  final BmiRepository repository;

  Calculate(this.repository);

  @override
  Future<Bmi> call(Params params) async {
    return repository.calculate(params.height, params.weight);
  }
}

class Params extends Equatable {
  final double height;
  final double weight;

  Params({@required this.height, @required this.weight})
      : super([height, weight]);
}
