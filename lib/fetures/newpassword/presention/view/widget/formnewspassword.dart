import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';

class formnewspassword extends StatelessWidget {
  const formnewspassword({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          Text(
            "كلمة المرور الجديدة",
            style: AppStyles.styleMedium16(context).copyWith(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          PasswordFiled(onSaved: (v ) {  },),
          const SizedBox(
            height: 30,
          ),
          Text(
            "تأكيد كلمة المرور الجديدة",
            style: AppStyles.styleMedium16(context).copyWith(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          PasswordFiled(onSaved: (v ) {  },),
          const SizedBox(
            height: 38,
          ),
        ],
      ),
    );
  }
}
