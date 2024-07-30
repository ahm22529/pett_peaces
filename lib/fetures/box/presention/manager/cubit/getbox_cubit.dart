import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';

part 'getbox_state.dart';

class GetboxCubit extends Cubit<GetboxState> {
  GetboxCubit(this.boxrepo) : super(GetboxInitial());
  Boxrepo boxrepo;
  void getBox({required String endpoint, required String token}) async {
    emit(Getboxload());
    final res = await boxrepo.getBoxdata(endpoint: endpoint, token: token);
    res.fold(
      (failure) => emit(Getboxfauiler(errmas: failure.errmas)),
      (userEntity) => emit(Getboxsucess(boxEntity: userEntity)),
    );
  }
}
