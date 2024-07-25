import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/courses/data/model/checkoutresponse/checkoutresponse.dart';
import 'package:pett_peaces/fetures/courses/data/model/courseresponse/courseresponse.dart';
import 'package:pett_peaces/fetures/courses/domain/entity/checkout_enity.dart';
import 'package:pett_peaces/fetures/courses/domain/entity/courses_entity.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';

class CorseRepoImp extends CourseRepo {
  final RequestServices requestServices = RequestServices(Dio());

  @override
  Future<Either<Failure, CoursesEntityList>> getcoursedata(
      {required String ndpoint, required String token}) async {
    try {
      var result = await requestServices.getRequest(
          endPoint: ndpoint, token: token, id: "");

      CoursesEntityList co = Courseresponse.fromJson(result);
      return right(co);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> checkout(
      {required String ndpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    try {
      var result =
          await requestServices.post(data, ndpoint, token, "contentType");

      CheckoutResponse checkoutResponse = CheckoutResponse.fromJson(result);
      final String re = checkoutResponse.data.urlPayment;

      return right(re);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
