import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/rest_password.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/back_ground_continer.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/body_enter_email.dart';

class CheckemailBlocConsiumer extends StatelessWidget {
  const CheckemailBlocConsiumer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckemailCubit, CheckemailState>(
      listener: (context, state) {
        if (state is CheckemailFailure) {
          buildSucessbar(context, state.message);
        }
        if (state is CheckemailSuccess) {
    
          buildErrorBar(context, "تم ارسال الكود بنجاح");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is CheckLoading ? true : false,
          child: BackGroundRest(
            widget: const BodyEnteremail(),
            pos: MediaQuery.of(context).size.height * .3,
          ),
        );
      },
    );
  }
}
