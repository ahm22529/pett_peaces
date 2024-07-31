import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/login/data/model/user_input_data_login.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/custom_text_filed_email.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/forget_pass.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/headere_and_size.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/password_text_filed.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/singin_buttom.dart';

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
            widget: Textformfiledemail(
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
