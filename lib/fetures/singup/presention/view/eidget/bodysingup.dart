import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/textfiledinput.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/inputusermodel.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/accceptreules.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/buttomsingup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/continertextfiledcontry.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/header.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class BodySingUp extends StatefulWidget {
  const BodySingUp({Key? key}) : super(key: key);

  @override
  State<BodySingUp> createState() => _BodySingUpState();
}

class _BodySingUpState extends State<BodySingUp> {
  String name = "", email = "", pass = "", comfrimpass = "", phone = "";
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .09),
          const Header(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _globalKey,
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
                  const SizedBox(height: 16),
                  TextFilkedOther(onSaved: (v) {
                    name = v!;
                  }),
                  const SizedBox(height: 16),
                  Text(
                    "    البريد الإلكتروني      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Textformfiledemail(
                    onSaved: (v) {
                      email = v!;
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "    الهاتف       ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const ContinerTextFiled(),
                  const SizedBox(height: 16),
                  Text(
                    "    كلمة المرور      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  PasswordFieldvaild(
                    controller: _passwordController,
                    onSaved: (v) {
                      pass = v!;
                    },
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "   تأكيد كلمة المرور      ",
                    style: AppStyles.styleMedium16(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  PasswordFieldvaild(
                    controller: _confirmPasswordController,
                    isConfirm: true,
                    passwordController: _passwordController,
                    onSaved: (v) {
                      comfrimpass = v!;
                    },
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
          AcceptsReuls(onChanged: (value) {
            setState(() {
              isTermsAccepted = value;
            });
          }),
          const SizedBox(height: 20),
          ButtomSingup(
              globalKey: _globalKey,
              singupusermodel: Singupusermodel(
                  name: name,
                  phone: "010225255205",
                  email: email,
                  password: pass,
                  comfrimpassword: comfrimpass,
                  fcm_token: "fcm_token",
                  mobile_country_code: '+20')),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              if (_globalKey.currentState!.validate()) {
                _globalKey.currentState!.save();
                print(name);
                print(email);
              }
            },
            icon: Icon(Icons.safety_divider),
          ),
        ],
      ),
    );
  }
}
