import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/login/domain/repo.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/usermodel.dart';
import 'package:pett_peaces/fetures/singup/data/model/sing_up_response/data.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class LoginrepoImp extends LoginRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, UserEntitymodel>> Login(
      {required Map<String, dynamic> input, required String endponit}) async {
      try {
      dynamic result = await requestServices.post(input, endponit, "", "");

      // Check if result is Map<String, dynamic> and process accordingly
      if (result is Map<String, dynamic>) {
        // Assuming you need to create a Usermodel instance from the response
        Usermodel userModel = Usermodel.fromapi(result);
        return right(userModel);
      } else {
        // Handle unexpected response structure
        return left(ServFailure('Unexpected response structure'));
      }
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
