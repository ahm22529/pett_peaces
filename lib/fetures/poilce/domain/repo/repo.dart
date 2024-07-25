import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/poilce/domain/entity/policyentity.dart';

abstract class PolicyRepo {
  Future<Either<Failure, Dataentity>> getpolicy(
      {required String token, required String endpoint});
}
