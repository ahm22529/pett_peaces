import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/data/model/user_input_data_login.dart';
import 'package:pett_peaces/fetures/login/presenrtion/manager/cubit/login_cubit.dart';

class SinginButtom extends StatelessWidget {
  const SinginButtom({
    super.key,
    required this.globalKey,
    required this.logindataModel,
  });
  final LogindataModel logindataModel;
  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: 'تسجيل دخول',
          onPressed: () {
            if (globalKey.currentState!.validate()) {
              globalKey.currentState!.save();

              print(logindataModel.email);
              context
                  .read<LoginCubit>()
                  .Login(logindataModel.toJson(), "auth/login");
            } else {}
          },
        ),
      ],
    );
  }
}
