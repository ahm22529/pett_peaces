import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserEntitymodel>> Login(
      {required Map<String, dynamic> input, required String endponit});
}
