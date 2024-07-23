import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';

abstract class ContactusRepo {
 Future<Either<Failure, void>> checkout(
      {required String ndpoint,
     
      required Map<String, dynamic> data});
}

