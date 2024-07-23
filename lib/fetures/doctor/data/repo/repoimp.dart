import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';

import 'package:pett_peaces/fetures/doctor/data/model/doctore_response/doctore_response.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor_entity.dart';
import 'package:pett_peaces/fetures/doctor/domain/repo/doctorerepo.dart';

class DoctorrepImp extends Doctorerepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, DoctorEntity>> getallcoatch(
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

      DoctoreResponse storeResponse = DoctoreResponse.fromJson(result);
      DoctorEntity co = DoctorEntity(
          coatch: storeResponse?.data?.data ?? [],
          lastpage: storeResponse.lastpage);
      return right(co);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
