import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

abstract class SingupRepo {
  Future<Either<Failure, UserEntitymodel>> createmail(
      {required Map<String, dynamic> sin, required String endpoinrt});
  Future<Either<Failure, UserEntitymodel>> varifyEmail(
      {required String token,
      required Map<String, dynamic> input,
      required String endpoint});
  Future<Either<Failure, UserEntitymodel>> sendOpt({required String endpoint});
}
