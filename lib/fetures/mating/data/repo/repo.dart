import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/mating/data/model/all_mating_anmiles/all_mating_anmiles.dart';
import 'package:pett_peaces/fetures/mating/data/model/matingresponse/matingresponse.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/mating_entity.dart';
import 'package:pett_peaces/fetures/mating/domain/repo/repo.dart';

class Matingrepoimp extends Matingrepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, MatingEntity>> getMyanmilesMating(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      MatingEntity co = Matingresponse.fromJson(res);
      return right(co);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }

    Future<Either<Failure, ListAllMatingEntity>> getallanmilesMating(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      ListAllMatingEntity co = AllMatingAnmiles.fromJson(res);
      return right(co);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> AddordelMyanmilesMating(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.post('', endpoint, token, "");
      MatingEntity co = Matingresponse.fromJson(res);
      return right(Void);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }
}
