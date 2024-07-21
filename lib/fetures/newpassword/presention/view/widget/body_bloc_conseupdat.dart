import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/newpassword/presention/manager/cubit/updatepassword_cubit.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/shape.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';

class RestorAccount extends StatelessWidget {
  const RestorAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdatepasswordCubit, UpdatepasswordState>(
      listener: (context, state) {
        if (state is UpdatepasswordSuccess) {}
        if (state is UpdatepasswordFailure) {
          buildErrorBar(context, "state.message");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is UpdatepasswordLoading ? true : false,
          child: Shape(),
        );
      },
    );
  }
}
