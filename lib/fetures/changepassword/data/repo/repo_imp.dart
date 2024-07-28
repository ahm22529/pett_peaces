import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/changepassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/usermodel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ChangRepoImp extends ChangepassRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, UserEntitymodel>> updatePass(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    try {
      final res = await requestServices.post(data, endpoint, token, "");
      final Usermodel userModel = Usermodel.fromapi(res);

      return right(userModel);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
