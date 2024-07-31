import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/box/data/model/box_response/box_response.dart';
import 'package:pett_peaces/fetures/box/data/model/getbox_response/getbox_response.dart';
import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';

class BoxRepoImp extends Boxrepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, BoxEntity>> addorplusiteam(
      {required Map<String, dynamic> data,
      required String endpoint,
      required String token}) async {
    try {
      final res = await requestServices.post(data, endpoint, token, "");
      BoxEntity box = BoxResponse.fromJson(res);
      return right(box);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BoxEntity>> getBoxdata(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: '');
      BoxEntity box = GetboxResponse.fromJson(res);
      return right(box);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }
}
