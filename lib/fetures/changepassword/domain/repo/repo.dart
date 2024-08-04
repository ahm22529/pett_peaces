import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

abstract class ChangepassRepo {
  Future<Either<Failure, UserEntity>> updatePass(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data});
}
