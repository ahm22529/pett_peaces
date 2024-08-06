import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/repo.dart';

part 'varify_email_state.dart';

class VarifyEmailCubit extends Cubit<VarifyEmailState> {
  VarifyEmailCubit(this.authRepo) : super(VarifyEmailInitial());
  final SingupRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      {required Map<String, dynamic> input,
      required String endpoint,
      required String token}) async {
    emit(VarifyEmailLoading());
    final result = await authRepo.varifyEmail(
        token: token, input: input, endpoint: endpoint);
    result.fold(
      (failure) => emit(VarifyEmailFailure(message: failure.errmas)),
      (userEntity) => emit(VarifyEmailSuccess(userEntity: userEntity)),
    );
  }

  Future<void> resendcode(
      {required String endpoint, required String token}) async {
    emit(VarifyEmailLoading());
    final result = await authRepo.resend(endpoint: endpoint, token: token);
    result.fold(
      (failure) => emit(VarifyEmailFailure(message: failure.errmas)),
      (userEntity) => emit(VarifyEmailSuccess(userEntity: userEntity)),
    );
  }
}
