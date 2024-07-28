import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/mating_entity.dart';
import 'package:pett_peaces/fetures/mating/domain/repo/repo.dart';

part 'get_mating_state.dart';

class GetMatingCubit extends Cubit<GetMatingState> {
  GetMatingCubit(this.matingrepo) : super(GetMatingInitial());
  Matingrepo matingrepo;
  void getMating({required String endpoint, required String token}) async {
    emit(GetMatingload());
    final res =
        await matingrepo.getMyanmilesMating(endpoint: endpoint, token: token);
    res.fold(
      (failure) => emit(GetMatingfauiler(errmas: failure.errmas)),
      (userEntity) => emit(GetMatingsucess(matingEntity: userEntity)),
    );
  }
}
