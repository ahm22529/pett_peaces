import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

part 'checkemail_state.dart';

class CheckemailCubit extends Cubit<CheckemailState> {
  CheckemailCubit(this.restPasswordRepo) : super(CheckemailInitial());
  RestPasswordRepo restPasswordRepo;
  Future<void> createUserWithEmailAndPassword(
      Map<String, dynamic> email, String endpoint) async {
    emit(CheckLoading());
    final result = await restPasswordRepo.checkemail(email, endpoint);
    result.fold(
      (failure) => emit(CheckemailFailure(message: failure.errmas)),
      (userEntity) => emit(CheckemailSuccess(Check: userEntity)),
    );
  }
}
