import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/new_password.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/custom_divider.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/opt.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/time_daown.dart';
import 'package:pett_peaces/fetures/singup/data/reop/sigup_repo_Imp.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/sing_up_repo.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/varifaycuit/varify_email_cubit.dart';

class BodyRestPassword extends StatefulWidget {
  const BodyRestPassword({super.key, required this.email});
  final String email;

  @override
  State<BodyRestPassword> createState() => _BodyRestPasswordState();
}

class _BodyRestPasswordState extends State<BodyRestPassword> {
  SingupRepo singupRepo = Siguprepoimp();
  String code = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Customdivider(color: Color(0xffD9D9D966).withOpacity(.5)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text("إسترجاع كلمة المرور",
                      style: AppStyles.stylesemi20(context)
                          .copyWith(color: Colors.black)),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                      "  \nادخل الكود الذي تم ارسالة الىMohamedwael23@gmail.com  لاسترجاع كلمة المرور",
                      style: AppStyles.styleRegular14(context)),
                  const SizedBox(
                    height: 32,
                  ),
                  opt(
                    onSubmit: (String s) {
                      setState(() {
                        code = s;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocListener<CheckemailCubit, CheckemailState>(
                    listener: (context, state) {
                      if (state is CheckemailFailure) {}
                      if (state is CheckemailSuccess) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => NewPassWord(email: widget.email, opt: code,)));
                        buildErrorBar(context, "تم استرحاع الحساب");
                      }
                    },
                    child: Row(
                      children: [
                        Custombuttom(
                          titel: 'إرسال',
                          onPressed: () {
                            context.read<CheckemailCubit>().checkEmail(
                                {"email": widget.email, "otp": code},
                                "forget-password/check-otp");
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("لم تستلم الكود بعد؟"),
                  BlocProvider(
                      create: (context) => VarifyEmailCubit(singupRepo),
                      child: const TimeDown()),
                  const SizedBox(
                    height: 36,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Customdivider(color: Colors.orange),
        )
      ],
    );
  }
}
