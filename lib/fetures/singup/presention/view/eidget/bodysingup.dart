import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/accceptreules.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/buttomsingup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/continertextfiledcontry.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/header.dart';

class BodySingUp extends StatefulWidget {
  const BodySingUp({Key? key}) : super(key: key);

  @override
  State<BodySingUp> createState() => _BodySingUpState();
}

class _BodySingUpState extends State<BodySingUp> {
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
          ),
          const Header(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "    الأسم بالكامل      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextFieldWithShadow(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "    البريد الإلكتروني      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextFieldWithShadow(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "    الهاتف       ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ContinerTextFiled(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "    كلمة المرور      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const PasswordFiled(),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "   تاكيد كلمة المرور      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
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
          ),
          const AcceptsReuls(),
          const SizedBox(height: 20),
          ButtomSingup(globalKey: globalKey),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
