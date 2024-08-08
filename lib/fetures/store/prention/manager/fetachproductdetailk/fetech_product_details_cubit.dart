import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/details_entity.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';

part 'fetech_product_details_state.dart';

class FetechProductDetailsCubit extends Cubit<FetechProductDetailsState> {
  FetechProductDetailsCubit(this.storeRepo)
      : super(FetechProductDetailsInitial());
  StoreRepo storeRepo;
  void getdata(
      {required String endpoint,
      required String token,
      required String id}) async {
    emit(FetechProductDetailsload());
    final result =
        await storeRepo.getProduct(endpoint: endpoint, token: token, id: id);
    print("fectch $result");
    result.fold(
      (failure) => emit(FetechProductDetailsfauler(errmas: failure.errmas)),
      (userEntity) =>
          emit(FetechProductDetailssucess(producEntity: userEntity)),
    );
  }
}
