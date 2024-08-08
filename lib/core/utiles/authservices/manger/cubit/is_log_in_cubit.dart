import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/core/utiles/authservices/repo/auth_repo.dart';

part 'is_log_in_state.dart';

class IsLogInCubit extends Cubit<IsLogInState> {
  IsLogInCubit({required this.authRepository}) : super(IsLogInInitial());
  AuthRepository authRepository;
  bool islog = false;
  void setLogin(bool isLoggedIn) async {
    await authRepository.setLoggedIn(isLoggedIn);
  }

  Future<void> checkLoginStatus() async {
    final islog = await authRepository.isLoggedIn();
    if (islog) {
      log("message");
      emit(IsLoging());
    } else {
      emit(unLoging());
    }
  }
}
