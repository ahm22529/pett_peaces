import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/mating_entity.dart';

abstract class Matingrepo {
  Future<Either<Failure, MatingEntity>> getMyanmilesMating(
      {required String endpoint, required String token});

  Future<Either<Failure, void>> AddordelMyanmilesMating(
      {required String endpoint, required String token});

  Future<Either<Failure, ListAllMatingEntity>> getallanmilesMating(
      {required String endpoint, required String token});
}
