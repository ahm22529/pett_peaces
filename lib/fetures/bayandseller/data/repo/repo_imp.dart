import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/bayandseller/data/model/sel_response_model/sel_response_model.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/list_anmiles._enity%20.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';

class SellRepoImp extends Buyandsell {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, ListSelEnity>> GetallSell(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    try {
      final res = await requestServices.post(data, endpoint, token, "");
      ListSelEnity co = SelResponseModel.fromJson(res);
      return right(co);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
