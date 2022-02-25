import 'package:bmiv2/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}
