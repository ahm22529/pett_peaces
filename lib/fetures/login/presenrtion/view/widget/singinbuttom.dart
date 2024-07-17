import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/home/data/model/loginuserimodel/loginusermodel.dart';
import 'package:pett_peaces/fetures/home/presention/view/homescrren.dart';
import 'package:pett_peaces/fetures/login/data/model/userinputdatalogin.dart';
import 'package:pett_peaces/fetures/login/presenrtion/manager/cubit/login_cubit.dart';

class singinbutto extends StatelessWidget {
  const singinbutto({
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
