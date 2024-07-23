import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';

abstract class AnmilesRepo {
  Future<Either<Failure, ListAnmileEntity>> getanmiles(
      {required String token, required String endpoint});
}
