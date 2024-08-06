import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/chatdetails/data/model/chatdetailsresponse/chatdetailsresponse.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/entity/chat_details_entity.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/repo/massage_details_repo.dart';

class MassageDetailsRepooImp extends MassageDetailsRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, ChatDetailsEntity>> getmassage(
      {required String endpoint,
      required String token,
      required String id}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: id);
      return right(Chatdetailsresponse.fromJson(res));
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> sendMassage(
      {required String endppoint,
      required String token,
      required FormData data}) async {
    try {
      await requestServices.post(data, endppoint, token, "");
      return right(Void);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
