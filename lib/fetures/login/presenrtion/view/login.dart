import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/login/data/repo/repoimple.dart';
import 'package:pett_peaces/fetures/login/domain/repo.dart';
import 'package:pett_peaces/fetures/login/presenrtion/manager/cubit/login_cubit.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/bodylogin.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/bodyloginblocconsuimer.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginRepo loginRepo = LoginrepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
        create: (BuildContext context) {
          return LoginCubit(loginRepo);
        },
        child: Scaffold(body: SigninViewBodyBlocConsumer()));
  }
}
