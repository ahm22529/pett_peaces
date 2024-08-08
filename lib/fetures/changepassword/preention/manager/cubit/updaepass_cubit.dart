import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/changepassword/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/changepassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

part 'updaepass_state.dart';

class UpdaepassCubit extends Cubit<UpdaepassState> {
  UpdaepassCubit(this.changepassRepo) : super(UpdaepassInitial());
  ChangepassRepo changepassRepo;
  void UpdaPass(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    emit(Updaepassload());
    final res = await changepassRepo.updatePass(
        endpoint: endpoint, token: token, data: data);
    res.fold(
      (failure) => emit(Updaepassfaulier(errma: failure.errmas)),
      (userEntity) => emit(Updaepasssucess(userEntitymodel: userEntity)),
    );
  }
   void delet(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    emit(Updaepassload());
    final res = await changepassRepo.updatePass(
        endpoint: endpoint, token: token, data: data);
    res.fold(
      (failure) => emit(Updaepassfaulier(errma: failure.errmas)),
      (userEntity) => emit(Deletstate(userEntitymodel: userEntity)),
    );
  }
}
