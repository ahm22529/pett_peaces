import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/masssege/domain/entity/freined_chat_entity.dart';

abstract class MassageRepo {
  Future<Either<Failure, AllChat>> getAllFrined(
      {required String token, required String endpoint});
}
