import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';

import 'bodyrestpassword.dart';

class CheckBlocConsiumer extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckemailCubit, CheckemailState>(
      listener: (context, state) {
        if (state is CheckemailCubit) {}
        if (state is CheckemailCubit) {
          buildErrorBar(context, "state.message");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child:   backgroundrest(
        widget: BodyRestPassword(),
        pos: MediaQuery.of(context).size.height * .1,
      ),
        );
      },
    );
  }
}
