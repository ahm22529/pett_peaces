import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';

abstract class RestPasswordRepo {
  Future<Either<Failure, Checkentity>> checkemail(
      Map<String,dynamic> email, String enfponit);
      
}
