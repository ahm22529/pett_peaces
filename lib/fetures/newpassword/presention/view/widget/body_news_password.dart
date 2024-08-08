import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/presention/view/home_scrren.dart';
import 'package:pett_peaces/fetures/newpassword/presention/manager/cubit/updatepassword_cubit.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/buttom_accept.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/password_filed_new.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/opt.dart';

class BodyNewsPassword extends StatefulWidget {
  const BodyNewsPassword({Key? key, required this.opt, required this.email})
      : super(key: key);
  final String opt, email;
  @override
  State<BodyNewsPassword> createState() => _BodyNewsPasswordState();
}

class _BodyNewsPasswordState extends State<BodyNewsPassword> {
  GlobalKey<FormState> globalKey = GlobalKey();
  String pass = "", comfrim = "";
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
              onSaved1: (String? v) {
                pass = v!;
              },
              onSaved2: (String? v) {
                comfrim = v!;
              },
            ),
            BlocListener<UpdatepasswordCubit, UpdatepasswordState>(
              listener: (context, state) {
                // TODO: implement listener
                if (state is UpdatepasswordSuccess) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>
                              HomeScreen(userEntitymodel: state.userEntity)));

                  buildErrorBar(context, "مرحبا بعودتك");
                }
              },
              child: buttomAccept(
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    // يمكنك هنا تنفيذ الإجراءات بمجرد تحقق النموذج
                    context.read<UpdatepasswordCubit>().updatePassw({
                      "email": widget.email,
                      "otp": widget.opt,
                      "password": pass,
                      "password_confirmation": comfrim
                    }, "forget-password/reset-password");
                  }
                },
              ),
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
