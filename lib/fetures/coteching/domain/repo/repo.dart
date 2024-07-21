import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/coatch_entiity_frist.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';

abstract class CoatchingRepo {
  Future<Either<Failure, CoatchEntiityFrist>> getallcoatch(
      {required String token,
      required String endpoint,
      Map<String, dynamic> data = const {}});
}
