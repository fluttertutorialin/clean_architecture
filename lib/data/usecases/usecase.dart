import 'package:dartz/dartz.dart';
import '../../core/error/error.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params parameter);
}