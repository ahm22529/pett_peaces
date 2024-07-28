import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/login/domain/repo.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  LoginRepo loginRepo;
  void Login(Map<String, dynamic> input, String endpoint) async {
    emit(LoginLoading());
    final result = await loginRepo.Login(input: input, endponit: endpoint);

    result.fold(
      (failure) => emit(LoginFailure(message: failure.errmas)),
      (userEntity) => emit(LoginSuccess(userEntity: userEntity)),
    );
  }
}
