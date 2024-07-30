import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/changepassword/preention/manager/cubit/updaepass_cubit.dart';
import 'package:pett_peaces/fetures/changepassword/preention/view/widget/newfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/passwordfilednew.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class BodyChangePassword extends StatefulWidget {
  const BodyChangePassword({Key? key}) : super(key: key);

  @override
  State<BodyChangePassword> createState() => _BodyChangePasswordState();
}

class _BodyChangePasswordState extends State<BodyChangePassword> {
  String password = '';
  String confirm = '';
  String old = '';
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdaepassCubit, UpdaepassState>(
      listener: (context, state) {
        if (state is Updaepasssucess) {
          buildErrorBar(context, "تم تغير كلمه المرور بنجاح ");
        }
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  "كلمة المرور الحالية",
                  style: AppStyles.styleMedium18(context),
                ),
                SizedBox(height: 16),
                PasswordFiled(
                  onSaved: (v) {
                    old = v ?? '';
                  },
                ),
                SizedBox(height: 16),
                PasswordFieldNew(
                  globalKey: globalKey,
                  onSaved1: (String? v) {
                    password = v ?? '';
                  },
                  onSaved2: (String? v) {
                    confirm = v ?? '';
                  },
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Custombuttom(
                      titel: "تأكيد",
                      onPressed: () {
                        if (globalKey.currentState?.validate() ?? false) {
                          BlocProvider.of<UpdaepassCubit>(context).UpdaPass(
                              endpoint: "profile/update/password",
                              token:
                                  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyMjM2Njg5LCJleHAiOjE3MjI4NDE0ODksIm5iZiI6MTcyMjIzNjY4OSwianRpIjoiaXp3ZjFlUG5IS0JOV3Z6TiIsInN1YiI6IjEyMCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.fkqOMsnicpLCx47OK-OuegkNLk_sQranHL8pFmrU6OI",
                              data: {
                                "old_password": old,
                                "password": password,
                                "password_confirmation": confirm
                              });
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
