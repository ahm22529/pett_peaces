import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/inputusermodel.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';

class ButtomSingup extends StatelessWidget {
  const ButtomSingup({
    super.key,
    required this.globalKey,
    required this.singupusermodel,
  });

  final GlobalKey<FormState> globalKey;
  final Singupusermodel singupusermodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Custombuttom(
              titel: "تسجيل الدخول ",
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  globalKey.currentState!.save();

                  context.read<SignupCubit>().createUserWithEmailAndPassword(
                      singupusermodel.toJson(), "auth/register");
                } else {}
              }),
        ],
      ),
    );
  }
}
