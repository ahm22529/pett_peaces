import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/singupcontiner.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/varifte_email.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.userEntity.massage.toString())));
        }
        if (state is SignupFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message.toString())));
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading ? true : false,
            child: CustomBackgroundSinup(
              widget1: imagedog(
                img:
                    "Asset/image/photography-surprised-dog-looking-from-white-long-frame-banner-removebg-preview 1.png",
                hig: MediaQuery.of(context).size.height * .21,
                bo: -10,
              ),
              widget2: singupcontiner(),
            ));
      },
    );
  }
}
