import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/coatch_entiity_frist.dart';
import 'package:pett_peaces/fetures/coteching/domain/repo/repo.dart';

part 'fetachingallcout_state.dart';

class FetachingallcoutCubit extends Cubit<FetachingallcoutState> {
  FetachingallcoutCubit(this.coatchingRepo) : super(FetachingallcoutInitial());
  CoatchingRepo coatchingRepo;
  void getdata(
      {required String endpoint,
      required String token,
      Map<String, dynamic> data = const {}}) async {
    emit(Fetachingallcoutload());
    final result = await coatchingRepo.getallcoatch(
        endpoint: endpoint, token: token, data: data);
    print("fectch $result");
    result.fold(
      (failure) => emit(Fetachingallcoutfaulerl(errmas: failure.errmas)),
      (userEntity) =>
          emit(Fetachingallcoutsucess(coatchEntiityFrist: userEntity)),
    );
  }

  Future<void> searchProducts({
    required String endpoint,
    required String token,
    required Map<String, dynamic> query, // البحث استناداً إلى استعلام
  }) async {
    emit(Fetachingallcoutload());
    final result = await coatchingRepo.getallcoatch(
      endpoint: endpoint,
      token: token,
      data: query, // إرسال استعلام البحث كبيانات
    );
    print("search $result");
    result.fold(
      (failure) => emit(Fetachingallcoutfaulerl(errmas: failure.errmas)),
      (userEntity) =>
          emit(Fetachingallcoutsucessserach(coatchEntiityFrist: userEntity)),
    );
  }
}
