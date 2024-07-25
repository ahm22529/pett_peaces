import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';

abstract class AnmilesRepo {
  Future<Either<Failure, ListAnmileEntity>> getanmiles(
      {required String token, required String endpoint});
  Future<Either<Failure, void>> addanmiles(
      {required String endpoint,
      required String token,
      required FormData data});

  Future<Either<Failure, void>> deletanmiles({
    required String endpoint,
    required String token,
  });
}
