import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/courses/data/model/checkout_response/checkout_response.dart';
import 'package:pett_peaces/fetures/courses/data/model/courseresponse/courseresponse.dart';

import 'package:pett_peaces/fetures/courses/domain/entity/courses_entity.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';

class CorseRepoImp extends CourseRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, CoursesEntityList>> getcoursedata(
      {required String ndpoint, required String token}) async {
    try {
      var result = await requestServices.getRequest(
          endPoint: ndpoint, token: token, id: "");

      CoursesEntityList co = Courseresponse.fromJson(result);
      return right(co);
    } on Exception catch (e) {
      //
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Checkentity>> checkout(
      {required String ndpoint,
      required String token,
    required  Map<String, dynamic> data}) async {
    try {
      var result =
          await requestServices.post(data, ndpoint, token, "contentType");
      CheckoutResponse.fromJson(result);
      return right(result);
    } on Exception catch (e) {
      // TODO
      return left(ServFailure(e.toString()));
    }
  }
}
