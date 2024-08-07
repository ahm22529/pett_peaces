import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/authservices/manger/cubit/is_log_in_cubit.dart';
import 'package:pett_peaces/core/utiles/authservices/repo/auth_repo.dart';

import 'package:pett_peaces/fetures/login/data/repo/repoimple.dart';
import 'package:pett_peaces/fetures/login/domain/repo.dart';
import 'package:pett_peaces/fetures/login/presenrtion/manager/cubit/login_cubit.dart';

import 'package:pett_peaces/fetures/login/presenrtion/view/widget/body_singin_bloc_consuimer.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginRepo loginRepo = LoginrepoImp();
  AuthRepository authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (BuildContext context) {
          return LoginCubit(loginRepo);
        },
      ),
      BlocProvider(
          create: (context) => IsLogInCubit(authRepository: authRepository))
    ], child: const Scaffold(body: SigninViewBodyBlocConsumer()));
  }
}
