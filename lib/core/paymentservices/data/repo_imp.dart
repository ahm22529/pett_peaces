import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/core/paymentservices/domain/repo.dart';
import 'package:pett_peaces/fetures/courses/data/model/checkoutresponse/checkoutresponse.dart';

class CheckoutrepoImp extends CheckoutRepo {
  RequestServices requestServices = RequestServices(Dio());
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
