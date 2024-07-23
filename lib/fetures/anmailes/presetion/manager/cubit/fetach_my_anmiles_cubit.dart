import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';

part 'fetach_my_anmiles_state.dart';

class FetachMyAnmilesCubit extends Cubit<FetachMyAnmilesState> {
  FetachMyAnmilesCubit(this.anmilesRepo) : super(FetachMyAnmilesInitial());
  AnmilesRepo anmilesRepo;
  void getanmiles({required String token, required String endpoint}) async {
    emit(FetachMyAnmileslaod());
    final result =
        await anmilesRepo.getanmiles(token: token, endpoint: endpoint);
    result.fold(
      (failure) => emit(FetachMyAnmilesfauiler(errmas: failure.errmas)),
      (userEntity) => emit(FetachMyAnmsucesss(lis: userEntity)),
    );
  }
}
