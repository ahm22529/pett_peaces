import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/accceptreules.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/buttomsingup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/continertextfiledcontry.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/header.dart';

class BodySingUp extends StatefulWidget {
  const BodySingUp({super.key});

  @override
  State<BodySingUp> createState() => _BodySingUpState();
}

class _BodySingUpState extends State<BodySingUp> {
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
          ),
          const Header(),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("    الأسم بالكامل      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                const SizedBox(
                  height: 16,
                ),
                const TextFieldWithShadow(),
                const SizedBox(
                  height: 16,
                ),
                Text("    البريد الإلكتروني      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                const SizedBox(
                  height: 16,
                ),
                const TextFieldWithShadow(),
                const SizedBox(
                  height: 16,
                ),
                Text("    الهاتف       ",
                    style: AppStyles.styleMedium16(context).copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                const SizedBox(
                  height: 16,
                ),
                const ContinerTextFiled(),
                const SizedBox(
                  height: 16,
                ),
                Text("    كلمة المرور      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                const SizedBox(
                  height: 16,
                ),
                const PasswordFiled(),
                const SizedBox(
                  height: 8,
                ),
                Text("   تاكيد كلمة المرور      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                const SizedBox(
                  height: 16,
                ),
                const PasswordFiled(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const AcceptsReuls(),
          ButtomSingup(globalKey: globalKey)
        ]),
      ),
    );
  }
}
