import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/passwordtextfiled.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/restpassword.dart';

class Customformdiled extends StatelessWidget {
  const Customformdiled({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("   البريد الإلكتروني      ",
              style: AppStyles.styleMedium16(context)
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.black)),
          const SizedBox(
            height: 16,
          ),
          const TextFieldWithShadow(),
          const SizedBox(
            height: 16,
          ),
          Text("    كلمة المرور      ",
              style: AppStyles.styleMedium16(context)
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.black)),
          const SizedBox(
            height: 16,
          ),
          const PasswordFiled(),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Restpassword())),
                child: Text(
                  "نسيت كلمة المرور؟",
                  style: AppStyles.styleRegular14(context)
                      .copyWith(fontSize: 12, color: const Color(0xffF78E32)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
