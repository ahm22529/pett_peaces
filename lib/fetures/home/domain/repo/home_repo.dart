import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/home/domain/entity/home_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, HomeEntity>> getHome(
      {required String endpoint, required String token});
}
