import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/changepassword/preention/view/widget/bodychangepassword.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';

class Changepassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("Asset/image/Back.png")),
        title: Text(
          "  تغير كلمة المرور",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyChangePassword(),
    );
  }
}
