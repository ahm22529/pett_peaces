import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';

class bodychangepassword extends StatelessWidget {
  const bodychangepassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "كلمة المرور الحالية",
            style: AppStyles.styleMedium18(context),
          ),
          SizedBox(
            height: 16,
          ),
          PasswordFiled(),
          SizedBox(
            height: 16,
          ),
          Text(
            "كلمة المرور الجديدة",
            style: AppStyles.styleMedium18(context),
          ),
          SizedBox(
            height: 16,
          ),
          PasswordFiled(),
          SizedBox(
            height: 16,
          ),
          Text(
            "تأكيد كلمة المرور الجديدة ",
            style: AppStyles.styleMedium18(context),
          ),
          const SizedBox(
            height: 16,
          ),
          PasswordFiled(),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [Custombuttom(titel: "تاكيد", onPressed: () {})],
          )
        ],
      ),
    );
  }
}
