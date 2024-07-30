import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

abstract class MydataRepo {
  Future<Either<Failure, UserEntitymodel>> updateData(
      {required String token,
      required String endpoint,
      required FormData form});
    
   Future<Either<Failure, void>> deleteMyaccount(
      {required String token,
      required String endpoint,
      required String form});  

}
