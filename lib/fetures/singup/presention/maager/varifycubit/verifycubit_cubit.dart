import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/repo.dart';

part 'verifycubit_state.dart';

class VerifycubitCubit extends Cubit<VerifycubitState> {
  VerifycubitCubit(this.singupRepo) : super(VerifycubitInitial());
  SingupRepo singupRepo;
  void varifyemail(String endpoint, token) async {
    try {
      emit(VerifyLoading());
      final result = await singupRepo.send(token: token, endpoint: endpoint);
      result.fold(
        (failure) => emit(VerifyFailure(message: failure.errmas)),
        (userEntity) => emit(VerifySuccess(userEntity: userEntity)),
      );
    } on Exception catch (e) {
      // TODO
    }
  }
}
