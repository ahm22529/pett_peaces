import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/home/domain/entity/home_entity.dart';
import 'package:pett_peaces/fetures/home/domain/repo/repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  HomeRepo homeRepo;
  void getdata({required String endpoint, required String token}) async {
    final rusesilt = homeRepo.getHome(endpoint: endpoint, token: token);
    emit(HomeLoad());
    final result = await homeRepo.getHome(endpoint: endpoint, token: token);
    result.fold(
      (failure) => emit(Homefailuer(errmas: failure.errmas)),
      (userEntity) => emit(HomeSucess(homeEntity: userEntity)),
    );
  }
}
