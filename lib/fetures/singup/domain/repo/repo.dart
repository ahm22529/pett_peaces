import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

abstract class SingupRepo {
  Future<Either<Failure, UserEntity>> createmail(
      {required Map<String, dynamic> sin, required String endpoinrt});
  Future<Either<Failure, UserEntity>> varifyEmail(
      {required String token,
      required Map<String, dynamic> input,
      required String endpoint});
  Future<Either<Failure, UserEntity>> sendOpt({required String endpoint});
  Future<Either<Failure, UserEntity>> resend(
      {required String endpoint, required String token});
}
