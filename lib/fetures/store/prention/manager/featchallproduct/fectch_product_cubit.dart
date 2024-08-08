import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/store_entity.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';

part 'fectch_product_state.dart';

class FectchProductCubit extends Cubit<FectchProductState> {
  FectchProductCubit(this.storeRepo) : super(FectchProductInitial());

  final StoreRepo storeRepo;

  Future<void> getdata({
    required String endpoint,
    required String token,
    Map<String, dynamic> data = const {},
  }) async {
    emit(FectchProductLoad());
    final result = await storeRepo.getAllProducts(
      endpoint: endpoint,
      token: token,
      data: data,
    );
    print("fectch $result");
    result.fold(
      (failure) => emit(FectchProductfailuer(errmass: failure.errmas)),
      (userEntity) => emit(FectchProductsucess(producEntity: userEntity)),
    );
  }

  // دالة خاصة للبحث
  Future<void> searchProducts({
    required String endpoint,
    required String token,
    required Map<String, dynamic> query, // البحث استناداً إلى استعلام
  }) async {
    emit(FectchProductLoad());
    final result = await storeRepo.getAllProducts(
      endpoint: endpoint,
      token: token,
      data: query, // إرسال استعلام البحث كبيانات
    );
    print("search $result");
    result.fold(
      (failure) => emit(FectchProductfailuer(errmass: failure.errmas)),
      (userEntity) => emit(FectchProductsucess(producEntity: userEntity)),
    );
  }

  Future<void> filteer({
    required String endpoint,
    required String token,
    required Map<String, dynamic> query, // البحث استناداً إلى استعلام
  }) async {
    emit(FectchProductLoad());
    final result = await storeRepo.getAllProducts(
      endpoint: endpoint,
      token: token,
      data: query, // إرسال استعلام البحث كبيانات
    );
    print("search $result");
    result.fold(
      (failure) => emit(FectchProductfailuer(errmass: failure.errmas)),
      (userEntity) => emit(FectchFiltersucess(producEntity: userEntity)),
    );
  }
}
