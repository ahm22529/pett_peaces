import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/coteching/data/model/coating_response/coating_response.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/coatch_entiity_frist.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/domain/repo/repo.dart';

class CoatingRepoImp extends CoatchingRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, CoatchEntiityFrist>> getallcoatch(
      {required String token,
      required String endpoint,
      Map<String, dynamic> data = const {}}) async {
    try {
      final result = await requestServices.post(
        data,
        endpoint,
        token,
        "",
      );

      CoatingResponse storeResponse = CoatingResponse.fromJson(result);
      CoatchEntiityFrist co = CoatchEntiityFrist(
          coatch: storeResponse?.data?.data ?? [],
          lastpage: storeResponse.lastpage);
      return right(co);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
