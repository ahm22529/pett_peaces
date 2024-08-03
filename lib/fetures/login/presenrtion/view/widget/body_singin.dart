import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/create_new_account.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/form_singin.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "مرحبا بك ",
                style: AppStyles.stylesmedium32(context)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                " أهلا بك في Petty Peace قم بتسجيل الدخول الآن ",
                style: AppStyles.styleRegular14(context).copyWith(
                    color: const Color(0xff8A8A8A),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Customformdiled(globalKey: globalKey),
              const SizedBox(
                height: 22,
              ),
              const Forget()
            ],
          ),
        ),
      ),
    );
  }
}
