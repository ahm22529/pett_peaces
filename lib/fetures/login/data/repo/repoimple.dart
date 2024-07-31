import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/login/domain/repo.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/usermodel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class LoginrepoImp extends LoginRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, UserEntitymodel>> singIn(
      {required Map<String, dynamic> input, required String endponit}) async {
    try {
      dynamic result = await requestServices.post(input, endponit, "", "");
      Usermodel userModel = Usermodel.fromapi(result);
      return right(userModel);
    } on DioException catch (e) {
      return left(ServFailure.formdioerr(e));
    } catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
