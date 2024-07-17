import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/restpassword/data/model/check_response_model.dart';
import 'package:pett_peaces/fetures/restpassword/data/model/checkinputmodel.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/repo.dart';

class RestPassWordRepoImp extends RestPasswordRepo {
  RequestServices requestServices = RequestServices(Dio());
  @override
  Future<Either<Failure, Checkentity>> checkemail(
      Map<String, dynamic> email, endponit) async {
    final resuit = await requestServices.post(email, endponit, '', "");

    // Check if resuilt is Map<String, dynamic> and process accordingly
    if (resuit is Map<String, dynamic>) {
      // Assuming you need to create a Usermodel instance from the response
      print(resuit);
      Checkentity userModel = Checkdata.fromapi(CheckResponseModel.fromJson(resuit));
      return right(userModel);
    } else {
      // Handle unexpected response structure
      return left(ServFailure('Unexpected response structure'));
    }
  }
}
