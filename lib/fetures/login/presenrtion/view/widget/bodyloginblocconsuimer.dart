import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/widget/customprogresshub.dart';
import 'package:pett_peaces/fetures/home/presention/view/homescrren.dart';
import 'package:pett_peaces/fetures/login/presenrtion/manager/cubit/login_cubit.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/bodylogin.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => HomeScreen(
                        userEntitymodel: state.userEntity,
                      )));
        }

        if (state is LoginFailure) {
          log(state.message);
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is LoginLoading ? true : false,
            child: CustomBackgroundSinup(
              widget1: imagedog(
                img:
                    "Asset/image/close-up-adorable-kitten-bathtub-removebg-preview 1 (1).png",
                hig: MediaQuery.of(context).size.height * .31,
                bo: -15,
              ),
              widget2: LoginWidget(),
            ));
      },
    );
  }
}
