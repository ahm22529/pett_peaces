import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/order2/data/model/order_response/order_response.dart';
import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';
import 'package:pett_peaces/fetures/order2/domain/repo/repo.dart';

class Orderrepoimp extends Orderrepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, ListOrderEntity>> getorder(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      ListOrderEntity orders = OrderResponse.fromJson(res);
      return right(orders);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }
}
