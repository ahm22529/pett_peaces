import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/home/presention/view/home_scrren.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/varifaycuit/varify_email_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/sinupcubit/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/body_varify_email.dart';

class VarfyEmailBlocConsumer extends StatelessWidget {
  const VarfyEmailBlocConsumer({
    super.key,
    required this.token,
    required this.email,
  });
  final String token, email;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VarifyEmailCubit, VarifyEmailState>(
      listener: (context, state) {
        if (state is VarifyEmailSuccess) {
          buildErrorBar(context, state.userEntity.massage);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => HomeScreen(
                        userEntitymodel: state.userEntity,
                      )));
        }
        if (state is VarifyEmailFailure) {
          buildSucessbar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading ? true : false,
            child: BodyVarifyEmail(
              email: email,
              token: token,
            ));
      },
    );
  }
}
