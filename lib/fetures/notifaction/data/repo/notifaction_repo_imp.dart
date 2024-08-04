import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/notifaction/data/model/notifaction_response/notifaction_response.dart';
import 'package:pett_peaces/fetures/notifaction/domain/entity/notifaction_entity.dart';
import 'package:pett_peaces/fetures/notifaction/domain/repo/notifaction_repo.dart';

class NotifactionRepoImp extends NotifactionRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, Allnotifaction>> getnotifaction(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      return right(NotifactionResponse.fromJson(res));
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
