import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';

abstract class Boxrepo {
  Future<Either<Failure, BoxEntity>> addorplusiteam(
      {required Map<String, dynamic> data,
      required String endpoint,
      required String token});

       Future<Either<Failure, BoxEntity>> getBoxdata(
      {
      required String endpoint,
      required String token});
}
