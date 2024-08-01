import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/usermodel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/repo.dart';

class Siguprepoimp extends SingupRepo {
  RequestServices requestservices = RequestServices(Dio());

  @override
  Future<Either<Failure, UserEntitymodel>> createmail(
      {required Map<String, dynamic> sin, required String endpoinrt}) async {
    try {
      dynamic result = await requestservices.post(sin, endpoinrt, "", "");

      if (result is Map<String, dynamic>) {
        Usermodel userModel = Usermodel.fromapi(result);
        return right(userModel);
      } else {
        return left(ServFailure(""));
      }
    } on DioException catch (e) {
      return left(ServFailure.formdioerr(e));
    } catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntitymodel>> varifyEmail(
      {required String token,
      required Map<String, dynamic> input,
      required String endpoint}) async {
    try {
      dynamic result = await requestservices.post(input, endpoint, token, "");

      if (result is Map<String, dynamic>) {
        Usermodel userModel = Usermodel.fromapi(result);
        return right(userModel);
      } else {
        return left(ServFailure(""));
      }
    } on DioException catch (e) {
      return left(ServFailure.formdioerr(e));
    } catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntitymodel>> sendOpt({required String endpoint}) {
    throw UnimplementedError();
  }
}
