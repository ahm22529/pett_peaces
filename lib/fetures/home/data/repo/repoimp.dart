import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/home/data/model/homemodelresponse/homemodelresponse.dart';
import 'package:pett_peaces/fetures/home/domain/entity/home_entity.dart';
import 'package:pett_peaces/fetures/home/domain/repo/home_repo.dart';

class HomeRepoImp extends HomeRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, HomeEntity>> getHome(
      {required String endpoint, required String token}) async {
    try {
      final resul = await requestServices.getRequest(
        endPoint: endpoint,
        token: token,
        id: '',
      );

      HomeEntity homeEntity = Homemodelresponse.fromJson(resul);
      return right(homeEntity);
    } on Exception catch (e) {
      // TODO
      return left(ServFailure(e.toString()));
    }
  }
}
