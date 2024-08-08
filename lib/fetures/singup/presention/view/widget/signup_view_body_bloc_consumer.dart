import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/sinupcubit/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/image_dog.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/singup_continer.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          buildErrorBar(context, state.userEntity.massage);
        }
        if (state is SignupFailure) {
          buildSucessbar(context, "يرجي التاكد من صحه البيانات ");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading ? true : false,
            child: CustomBackgroundSinup(
              widget1: Imagedog(
                img:
                    "Asset/image/photography-surprised-dog-looking-from-white-long-frame-banner-removebg-preview 1.png",
                hig: MediaQuery.of(context).size.height * .21,
                bo: -10,
              ),
              widget2: const Singupcontiner(),
            ));
      },
    );
  }
}
