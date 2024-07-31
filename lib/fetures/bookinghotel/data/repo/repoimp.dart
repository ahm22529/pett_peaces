import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/bookinghotel/data/pending_response/pending_response.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/entity/llist_booking_entity.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/repo/bookingrepo.dart';

class Bookingrepoimp extends Bookingrepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, LlistBookingEntity>> getpending(
      {required String token, required String endpoint}) async {
    try {
      final result = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      LlistBookingEntity llistBookingEntity = PendingResponse.fromJson(result);
      return right(llistBookingEntity);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }
}
