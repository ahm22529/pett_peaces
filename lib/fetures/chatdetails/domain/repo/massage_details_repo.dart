import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/entity/chat_details_entity.dart';

abstract class MassageDetailsRepo {
  Future<Either<Failure, ChatDetailsEntity>> getmassage(
      {required String endpoint, required String token, required String id});
}
