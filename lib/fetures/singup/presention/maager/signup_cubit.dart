import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/repo.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final SingupRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      Map<String, dynamic> input, String endpoint) async {
    emit(SignupLoading());
    final result = await authRepo.createmail(sin: input, endpoinrt: endpoint);
    result.fold(
      (failure) => emit(SignupFailure(message: failure.errmas)),
      (userEntity) => emit(SignupSuccess(userEntity: userEntity)),
    );
  }
}
