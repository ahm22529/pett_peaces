import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';

part 'add_box_state.dart';

class AddBoxCubit extends Cubit<AddBoxState> {
  AddBoxCubit(this.boxrepo) : super(AddBoxInitial());
  Boxrepo boxrepo;
  void addproduct(
      {required String token,
      required String endpoint,
      required Map<String, dynamic> data}) async {
    emit(AddBoxload());
    final res = await boxrepo.addorplusiteam(
        data: data, endpoint: endpoint, token: token);
    print(res);
    res.fold(
      (failure) => emit(AddBoxfailer(errmas: failure.errmas)),
      (userEntity) => emit(AddBoxsucess(boxEntity: userEntity)),
    );
  }
}
