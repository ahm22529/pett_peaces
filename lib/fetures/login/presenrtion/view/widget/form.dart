import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/forgetpass.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/headereadsiz.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/restpassword.dart';

class Customformdiled extends StatelessWidget {
  const Customformdiled({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerandsize(
            widget: TextFieldWithShadow(),
            titel: "   البريد الإلكتروني      ",
          ),
          SizedBox(
            height: 16,
          ),
          headerandsize(
            widget: PasswordFiled(),
            titel: "    كلمة المرور      ",
          ),
          SizedBox(
            height: 8,
          ),
          forgepasss(),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
