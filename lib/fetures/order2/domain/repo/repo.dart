import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';

abstract class Orderrepo {
  Future<Either<Failure, ListOrderEntity>> getorder(
      {required String endpoint, required String token});
}
