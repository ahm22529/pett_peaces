import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/login/data/model/userinputdatalogin.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/forgetpass.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/headereadsiz.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/singinbuttom.dart';

class Customformdiled extends StatefulWidget {
  const Customformdiled({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  State<Customformdiled> createState() => _CustomformdiledState();
}

class _CustomformdiledState extends State<Customformdiled> {
  String email = "", pass = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderAndSize(
            widget: TextFieldWithShadow(
              onSaved: (v) {
                setState(() {
                  email = v!;
                });
              },
            ),
            titel: "   البريد الإلكتروني      ",
          ),
          const SizedBox(
            height: 16,
          ),
          HeaderAndSize(
            widget: PasswordFiled(
              onSaved: (v) {
                setState(() {
                  pass = v!;
                });
              },
            ),
            titel: "    كلمة المرور      ",
          ),
          const SizedBox(
            height: 8,
          ),
          const forgepasss(),
          const SizedBox(
            height: 32,
          ),
          SinginButtom(
            globalKey: widget.globalKey,
            logindataModel:
                LogindataModel(password: pass, email: email, fcm_token: "wq"),
          ),
        ],
      ),
    );
  }
}
