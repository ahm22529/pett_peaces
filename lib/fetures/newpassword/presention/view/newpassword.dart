import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';

class Newpassword extends StatelessWidget {
  const Newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewPassWord();
  }
}

class NewPassWord extends StatelessWidget {
  const NewPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Custombackground(
        image: 'Asset/image/كلمة المرور الجديدة.png',
        wideget: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: BodyNewsPassword()),
            ),
          ),
        ),
      ),
    );
  }
}

class BodyNewsPassword extends StatelessWidget {
  const BodyNewsPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "كلمة المرور الجديدة",
              style:
                  AppStyles.stylesemi20(context).copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "ادخل كلمة مرور قوية تحتوي على الاقل 8 رموز \n من حروف و ارقام",
              style: AppStyles.styleRegular14(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "كلمة المرور الجديدة",
              style: AppStyles.styleMedium16(context).copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            PasswordFiled(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "تأكيد كلمة المرور الجديدة",
              style: AppStyles.styleMedium16(context).copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            PasswordFiled(),
            const SizedBox(
              height: 38,
            ),
            Row(
              children: [
                Expanded(
                  child: Custombuttom(
                    titel: 'إرسال',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
