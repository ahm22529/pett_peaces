import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/changepassword/preention/manager/cubit/updaepass_cubit.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/passwordfilednew.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class BodyChangePassword extends StatefulWidget {
  const BodyChangePassword({
    Key? key,
  }) : super(key: key);

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
          log("Password update successful");
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: globalKey,
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
                  setState(() {
                    old = v!;
                  });
                },
              ),
              SizedBox(height: 16),
              PasswordFieldNew(
                globalKey: globalKey,
                onSaved1: (String? v) {
                  setState(() {
                    password = v!;
                  });
                },
                onSaved2: (String? v) {
                  setState(() {
                    confirm = v!;
                  });
                },
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Custombuttom(
                    titel: "تاكيد",
                    onPressed: () {
                      if (globalKey.currentState?.validate() ?? false) {
                        globalKey.currentState?.save();
                        log("Password: $password, Confirm: $confirm, Old: $old");
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
