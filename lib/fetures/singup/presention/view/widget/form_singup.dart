import 'package:country_code_text_field/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/textfiledinput.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/inputusermodel.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/accceptreules.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/buttomsingup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/continertextfiledcontry.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/passswordsingup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/varifte_email.dart';

class FormSingup extends StatefulWidget { 
  @override
  State<FormSingup> createState() => _FormSingupState();
}

class _FormSingupState extends State<FormSingup> {
  String name = "",
      email = "",
      pass = "",
      comfrimpass = "",
      phone = "",
      code = "";
       bool isTermsAccepted = false;

  final GlobalKey<FormState> _globalKey = GlobalKey();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

   @override
  Widget build(BuildContext context) {
  return  Form(
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
                  ContinerTextFiled(
                    onSaved: (PhoneNumber? s) {
                      setState(() {
                        phone = s!.number.toString();
                        code = s.countryCode.toString();
                      });
                    },
                  ),
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
                   AcceptsReuls(onChanged: (value) {
            setState(() {
              isTermsAccepted = value;
            });
          }),
          const SizedBox(height: 20),
          BlocListener<SignupCubit, SignupState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is SignupSuccess) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => Varifyemail(
                              token: state.userEntity.token,
                              email: email,
                            )));
              }
            },
            child: ButtomSingup(
              globalKey: _globalKey,
              singupusermodel: Singupusermodel(
                  name: name,
                  phone: phone,
                  email: email,
                  password: pass,
                  comfrimpassword: comfrimpass,
                  fcm_token: "fcm_token",
                  mobile_country_code: '+20'),
              accept: isTermsAccepted,
            ),
          ),
          const SizedBox(height: 20),
                ],
              ),
            );
  }
}
