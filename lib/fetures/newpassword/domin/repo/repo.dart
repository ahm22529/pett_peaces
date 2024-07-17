import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

abstract class UpdateRepo {
  Future<Either<Failure, UserEntitymodel>> updatepass(
      Map<String, dynamic> input, endpoint);
}
