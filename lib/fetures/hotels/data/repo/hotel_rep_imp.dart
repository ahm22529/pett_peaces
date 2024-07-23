import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/hotels/data/model/hotelresponse/hotelresponse.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';

class HotelRepImp extends Hotelrep {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, HotelEntity>> gethotel(
      {required String token, required String endpoint}) async {
    try {
      final result = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      Hotelresponse storeResponse = Hotelresponse.fromJson(result);

      return right(storeResponse);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> book(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    try {
      await requestServices.post(data, endpoint, token, "contentType");
      return right(Void);
    } catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
