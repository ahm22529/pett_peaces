import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';

import 'package:pett_peaces/fetures/doctor/domain/entity/doctor_entity.dart';

abstract class Doctorerepo {
  // ignore: non_constant_identifier_names
  Future<Either<Failure, DoctorEntity>> getallcoatch(
      {required String token,
      required String endpoint,
      Map<String, dynamic> data = const {}});
}
