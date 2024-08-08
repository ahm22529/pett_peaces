import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pett_peaces/core/apiservices/apiservices.dart';
import 'package:pett_peaces/core/error/error.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/data/model/all_p_roduct_response/all_p_roduct_response.dart';
import 'package:pett_peaces/fetures/store/data/model/deppartment/product.dart';
import 'package:pett_peaces/fetures/store/data/model/store_response/store_response.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/details_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/store_entity.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';

class StoreRepoImp extends StoreRepo {
  RequestServices requestServices = RequestServices(Dio());

  @override
  Future<Either<Failure, StoreEntity>> getAllProducts(
      {required String endpoint,
      required String token,
      Map<String, dynamic> data = const {}}) async {
    try {
      final result =
          await requestServices.post(data, endpoint, token, "contentType");

      AllPRoductResponse storeResponse = AllPRoductResponse.fromJson(result);
      StoreEntity sto = StoreEntity(
          lastpage: storeResponse.lastpage, product: storeResponse.product);
      return right(sto);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, DetailsPProductEntity>> getProduct(
      {required String endpoint,
      required String token,
      required String id}) async {
    try {
      final result = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: id);

      StoreResponse storeResponse = StoreResponse.fromJson(result);
      DetailsPProductEntity productList = storeResponse;
      return right(productList);
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AlldDepartment>> getalldep(
      {required String endpoint, required String token}) async {
    try {
      final res = await requestServices.getRequest(
          endPoint: endpoint, token: token, id: "");
      return right(Depart.fromJson(res));
    } on Exception catch (e) {
      return left(ServFailure(e.toString()));
    }
  }
}
