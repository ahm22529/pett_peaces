import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/examel_entity.dart';

abstract class Exambelrepo {
  Future<Either<Failure, ExamelEntity>> getexambel(
      {required String token,
      required String endpoint,
      Map<String, dynamic> data = const {}});
}
