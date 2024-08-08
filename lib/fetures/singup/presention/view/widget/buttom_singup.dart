import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/inputusermodel.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/sinupcubit/signup_cubit.dart';

class ButtomSingup extends StatelessWidget {
  const ButtomSingup({
    super.key,
    required this.globalKey,
    required this.singupusermodel,
    required this.accept,
  });

  final GlobalKey<FormState> globalKey;
  final Singupusermodel singupusermodel;
  final bool accept;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Custombuttom(
              titel: "تسجيل الدخول ",
              onPressed: () async {
                if (globalKey.currentState!.validate() && accept == true) {
                  globalKey.currentState!.save();

                  await context
                      .read<SignupCubit>()
                      .createUser(singupusermodel.toJson(), "auth/register");
                } else {}
              }),
        ],
      ),
    );
  }
}
