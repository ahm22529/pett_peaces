import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/restpassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';

import 'bodyrestpassword.dart';

class CheckemailBlocConsiumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckemailCubit, CheckemailState>(
      listener: (context, state) {
        if (state is CheckemailSuccess) {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => const Restpassword()));
        }
        if (state is CheckemailFailure) {
          buildErrorBar(context, "ggg");
        }
      }, 
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: backgroundrest(
            widget: BodyEnteremail(),
            pos: MediaQuery.of(context).size.height * .3,
          ),
        );
      },
    );
  }
}
