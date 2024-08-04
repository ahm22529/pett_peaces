import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/notifaction/domain/entity/notifaction_entity.dart';

abstract class NotifactionRepo {
  Future<Either<Failure, Allnotifaction>> getnotifaction(
      {required String endpoint, required String token});
}
