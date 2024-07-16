import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class PasswordFieldNew extends StatelessWidget {
  final GlobalKey<FormState> globalKey;
  

  const PasswordFieldNew({Key? key, required this.globalKey}) : super(key: key);

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
          PasswordFieldvaild(controller: _passwordController, onSaved: (v ) {  },),
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
              passwordController: _passwordController, onSaved: (v) {  },),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
