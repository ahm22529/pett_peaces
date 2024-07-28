import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/newpassword/presention/manager/cubit/updatepassword_cubit.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/buttomaccept.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/formnewspassword.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/passwordfilednew.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class BodyNewsPassword extends StatefulWidget {
  const BodyNewsPassword({Key? key}) : super(key: key);

  @override
  State<BodyNewsPassword> createState() => _BodyNewsPasswordState();
}

class _BodyNewsPasswordState extends State<BodyNewsPassword> {
  GlobalKey<FormState> globalKey = GlobalKey();

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
            PasswordFieldNew(
              globalKey: globalKey,
              onSaved1: (String? v) {},
              onSaved2: (String? v) {},
            ),
            buttomAccept(
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  // يمكنك هنا تنفيذ الإجراءات بمجرد تحقق النموذج
                  context
                      .read<UpdatepasswordCubit>()
                      .createUserWithEmailAndPassword({
                    "email": "test200@gamil.com",
                    "otp": "1234",
                    "password": "12345678910",
                    "password_confirmation": "12345678910"
                  }, "forget-password/reset-password");
                }
              },
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
