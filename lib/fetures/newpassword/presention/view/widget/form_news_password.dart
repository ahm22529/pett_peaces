import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/password_text_filed.dart';

class Formnewspassword extends StatefulWidget {
  const Formnewspassword({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  State<Formnewspassword> createState() => _FormnewspasswordState();
}

class _FormnewspasswordState extends State<Formnewspassword> {
  String pass = "", comifrimpass = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.globalKey,
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
          PasswordFiled(
            onSaved: (v) {
              pass = v!;
            },
          ),
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
          PasswordFiled(
            onSaved: (v) {
              comifrimpass = v!;
            },
          ),
          const SizedBox(
            height: 38,
          ),
        ],
      ),
    );
  }
}
