import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';

part 'delet_anmiles_state.dart';

class DeletAnmilesCubit extends Cubit<DeletAnmilesState> {
  DeletAnmilesCubit(this.anmilesRepo) : super(DeletAnmilesInitial());
  AnmilesRepo anmilesRepo;
  void deletAnmiles({required String token, required String endpoint}) async {
    final res =
        await anmilesRepo.deletanmiles(endpoint: endpoint, token: token);
    res.fold(
      (failure) => emit(DeletAnmilesfauiler(errmas: failure.errmas)),
      (userEntity) => emit(DeletAnmilessucess(masage: "تمت الحذف بنجاح")),
    );
  }
}
