import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/check_repo.dart';

part 'checkemail_state.dart';

class CheckemailCubit extends Cubit<CheckemailState> {
  CheckemailCubit(this.restPasswordRepo) : super(CheckemailInitial());
  RestPasswordRepo restPasswordRepo;
  Future<void> checkEmail(Map<String, dynamic> email, String endpoint) async {
    emit(CheckLoading());
    final result = await restPasswordRepo.checkemail(email, endpoint);
    result.fold(
      (failure) => emit(CheckemailFailure(message: failure.errmas)),
      (userEntity) => emit(CheckemailSuccess(Check: userEntity)),
    );
  }
}
