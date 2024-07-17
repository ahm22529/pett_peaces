import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
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
  GlobalKey<FormState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
            onSaved: (v) {},
          ), // حقل كلمة المرور الحالية، يجب استخدام PasswordFiled أو PasswordFieldvaild حسب ما تم تحديده سابقًا
          SizedBox(height: 16),
          PasswordFieldNew(
            globalKey: globalKey,
          ),
          Row(
            children: [Custombuttom(titel: "تاكيد", onPressed: () {})],
          )
        ],
      ),
    );
  }
}
