import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/core/utiles/authservices/repo/auth_repo.dart';

part 'is_log_in_state.dart';

class IsLogInCubit extends Cubit<IsLogInState> {
  IsLogInCubit({required this.authRepository}) : super(IsLogInInitial());
  AuthRepository authRepository;
  void setLogin(bool isLoggedIn) async {
    await authRepository.setLoggedIn(isLoggedIn);
    if (isLoggedIn) {
   
      emit(IsLoging());
    } else {
     
      emit(unLoging());
    }
  }

  Future<void> checkLoginStatus() async {
    final isLoggedIn = await authRepository.isLoggedIn();
    if (isLoggedIn) {
      log("message");
      emit(IsLoging());
    } else {
      emit(unLoging());
    }
  }
}
