import 'package:dartz/dartz.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/details_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/store_entity.dart';

abstract class StoreRepo {
  Future<Either<Failure, DetailsPProductEntity>> getProduct(
      {required String endpoint, required String token, required String id});

  Future<Either<Failure, StoreEntity>> getAllProducts({
    required String endpoint,
    required String token,
    Map<String, dynamic> data = const {}, // استخدام خريطة فارغة كقيمة افتراضية
  });

  Future<Either<Failure, AlldDepartment>> getalldep(
      {required String endpoint, required String token});
}
