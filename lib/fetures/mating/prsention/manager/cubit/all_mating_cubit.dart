import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';
import 'package:pett_peaces/fetures/mating/domain/repo/repo.dart';

part 'all_mating_state.dart';

class AllMatingCubit extends Cubit<AllMatingState> {
  AllMatingCubit(this.matingrepo) : super(AllmatingInital());

  Matingrepo matingrepo;
  void getMating({required String endpoint, required String token}) async {
    emit(AllmatingLoad());
    final res =
        await matingrepo.getallanmilesMating(endpoint: endpoint, token: token);
    print(res);
    res.fold(
      (failure) => emit(AllMatingfauiler(errmas: failure.errmas)),
      (userEntity) => emit(Allmatingsucess(matingEntity: userEntity)),
    );
  }
}
