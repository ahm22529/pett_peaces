import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/poilce/data/model/policyresponse/policyresponse.dart';
import 'package:pett_peaces/fetures/poilce/domain/entity/policyentity.dart';
import 'package:pett_peaces/fetures/poilce/domain/repo/repo.dart';

class PolicyrepImp extends PolicyRepo {
  final RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, Dataentity>> getpolicy(
      {required String token, required String endpoint}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      Policyresponse co = Policyresponse.fromJson(res);
      return right(co);
    } on Exception catch (e) {
      // TODO
      return Left(ServFailure(e.toString()));
    }
  }
}
