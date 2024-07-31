import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/list_anmiles._enity%20.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/sellerand_buy.dart';

abstract class Buyandsell {
  Future<Either<Failure, ListSelEnity>> GetallSell(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data});
}
