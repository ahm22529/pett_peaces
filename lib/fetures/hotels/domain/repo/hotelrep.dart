import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';

import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';

abstract class Hotelrep {
  Future<Either<Failure, HotelEntity>> gethotel(
      {required String token, required String endpoint});

  Future<Either<Failure, void>> book(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data});
}
