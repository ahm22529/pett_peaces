import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/data/model/exambel_and_advace_response/exambel_and_advace_response.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/examel_entity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/repo/repo.dart';

class Exambelrepimp extends Exambelrepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, ExamelEntity>> getexambel(
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

      ExambelAndAdvaceResponse storeResponse =
          ExambelAndAdvaceResponse.fromJson(result);

      return right(storeResponse);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
