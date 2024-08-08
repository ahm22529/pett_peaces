import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/authservices/manger/cubit/is_log_in_cubit.dart';


import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/localservices/manager/cubit/localdata_cubit.dart';


import 'package:pett_peaces/core/utiles/widget/customprogresshub.dart';
import 'package:pett_peaces/fetures/home/presention/view/home_scrren.dart';
import 'package:pett_peaces/fetures/login/presenrtion/manager/cubit/login_cubit.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/body_singin.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/image_dog.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.read<IsLogInCubit>().setLogin(true);
          log(state.userEntity.token);
          context.read<LocaldataCubit>().addUser(state.userEntity);

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
              widget1: Imagedog(
                img:
                    "Asset/image/close-up-adorable-kitten-bathtub-removebg-preview 1 (1).png",
                hig: MediaQuery.of(context).size.height * .31,
                bo: -15,
              ),
              widget2: const LoginWidget(),
            ));
      },
    );
  }
}
