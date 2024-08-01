import 'package:dartz/dartz.dart';

import '../../error/error.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, String>> checkout(
      {required String ndpoint,
      required String token,
      required Map<String, dynamic> data});
}
