import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class PasswordFieldNew extends StatelessWidget {
  final GlobalKey<FormState> globalKey;

  const PasswordFieldNew(
      {Key? key,
      required this.globalKey,
      required this.onSaved1,
      required this.onSaved2})
      : super(key: key);
  final void Function(String?)? onSaved1;
  final void Function(String?)? onSaved2;
  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();

    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          PasswordFieldvaild(
            controller: _passwordController,
            onSaved: onSaved1,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "   تأكيد كلمة المرور      ",
            style: AppStyles.styleMedium16(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          PasswordFieldvaild(
            controller: _confirmPasswordController,
            isConfirm: true,
            passwordController: _passwordController,
            onSaved: (v) {},
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
