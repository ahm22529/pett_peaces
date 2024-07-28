import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/mating/domain/repo/repo.dart';

part 'add_or_remove_state.dart';

class AddOrRemoveCubit extends Cubit<AddOrRemoveState> {
  AddOrRemoveCubit(this.matingrepo) : super(AddOrRemoveInitial());
  Matingrepo matingrepo;
  void getMating({required String endpoint, required String token}) async {
    emit(AddOrRemoveload());
    final res = await matingrepo.AddordelMyanmilesMating(
        endpoint: endpoint, token: token);
    res.fold(
      (failure) => emit(AddOrRemovefauiler(errmas: failure.errmas)),
      (userEntity) => emit(AddOrRemovesucess(errmas: "تم الغاء العرض بنجاح")),
    );
  }
}
