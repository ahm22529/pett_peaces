import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/list_anmiles._enity%20.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';

part 'sel_state.dart';

class SelCubit extends Cubit<SelState> {
  SelCubit(this.buyandsell) : super(SelInitial());
  Buyandsell buyandsell;

  void getAllSell(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    emit(Selload());
    final res = await buyandsell.GetallSell(
        endpoint: endpoint, token: token, data: data);

    res.fold(
      (failure) => emit(Selfauiler(errmass: failure.errmas)),
      (userEntity) => emit(Selsucess(listSelEnity: userEntity)),
    );
  }

  Future<void> searchProducts({
    required String endpoint,
    required String token,
    required Map<String, dynamic> query, // البحث استناداً إلى استعلام
  }) async {
    emit(Selload());
    final result = await buyandsell.GetallSell(
      endpoint: endpoint,
      token: token,
      data: query, // إرسال استعلام البحث كبيانات
    );
    print("search $result");
    result.fold(
      (failure) => emit(Selfauiler(errmass: failure.errmas)),
      (userEntity) => emit(Selsucessserch(listSelEnity: userEntity)),
    );
  }
}
