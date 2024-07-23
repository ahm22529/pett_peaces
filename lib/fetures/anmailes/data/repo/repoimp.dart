import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/anmailes/data/model/anmiles_response/anmiles_response.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';

class AnimelsRepoImp extends AnmilesRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, ListAnmileEntity>> getanmiles(
      {required String token, required String endpoint}) async {
    try {
      var result = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");

      ListAnmileEntity listAnmileEntity = AnmilesResponse.fromJson(result);
      return right(listAnmileEntity);
    } on Exception catch (e) {
      // TODO
      return left(ServFailure(e.toString()));
    }
  }
}
