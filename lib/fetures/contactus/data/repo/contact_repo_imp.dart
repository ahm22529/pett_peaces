import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/contact_rep.dart';

class ContactusRepoimp extends ContactusRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, void>> checkout(
      {required String ndpoint, required Map<String, dynamic> data}) async {
    try {
      await requestServices.post(data, ndpoint, "", "");
      return right(Void);
    } on Exception catch (e) {
      // TODO
      return left(ServFailure(e.toString()));
    }
  }
}
