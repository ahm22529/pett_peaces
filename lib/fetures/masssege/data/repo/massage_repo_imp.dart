import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/masssege/data/model/chat_responde/chat_responde.dart';
import 'package:pett_peaces/fetures/masssege/domain/entity/freined_chat_entity.dart';
import 'package:pett_peaces/fetures/masssege/domain/repo/massage_repo.dart';

class MassageRepoImp extends MassageRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, AllChat>> getAllFrined(
      {required String token, required String endpoint}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      return right(ChatResponde.fromJson(res));
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
