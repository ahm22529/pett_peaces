import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/fetures/home/presention/view/homescrren.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/cubit/varify_email_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/body_varify_email.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/singupcontiner.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/varifte_email.dart';

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
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.userEntity.massage.toString())));
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => HomeScreen()));
        }
        if (state is VarifyEmailFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message.toString())));
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
