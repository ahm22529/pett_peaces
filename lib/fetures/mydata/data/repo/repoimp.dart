import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/form_data.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/mydata/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/usermodel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class MydataRepoImp extends MydataRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, UserEntitymodel>> updateData(
      {required String token,
      required String endpoint,
      required FormData form}) async {
    try {
      final res = await requestServices.post(form, endpoint, token, "");
      final Usermodel userModel = Usermodel.fromapi(res);
      return right(userModel);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteMyaccount(
      {required String token,
      required String endpoint,
      required String form}) async {
    try {
      final res = await requestServices.post(form, endpoint, token, "");
      final Usermodel userModel = Usermodel.fromapi(res);
      return right(Void);
    } on Exception catch (e) {
      return Left(ServFailure(e.toString()));
    }
  }
}
