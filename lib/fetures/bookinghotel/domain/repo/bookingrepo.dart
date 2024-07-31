import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';

import '../entity/llist_booking_entity.dart';

abstract class Bookingrepo {
  Future<Either<Failure, LlistBookingEntity>> getpending(
      {required String token, required String endpoint});
}
