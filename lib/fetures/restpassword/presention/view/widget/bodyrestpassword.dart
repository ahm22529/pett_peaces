import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/newpassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/opt.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/timedaown.dart';

class BodyRestPassword extends StatefulWidget {
  const BodyRestPassword({super.key, required this.email});
  final String email;

  @override
  State<BodyRestPassword> createState() => _BodyRestPasswordState();
}

class _BodyRestPasswordState extends State<BodyRestPassword> {
  String code = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: customdivider(color: Color(0xffD9D9D966).withOpacity(.5)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
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
                        // TODO: implement listener
                        if (state is CheckemailFailure) {
                          buildErrorBar(context, "message");
                        }
                      },
                      child: Row(
                        children: [
                          Custombuttom(
                            titel: 'إرسال',
                            onPressed: () {
                              context
                                  .read<CheckemailCubit>()
                                  .createUserWithEmailAndPassword(
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
                    const TimeDown(),
                    const SizedBox(
                      height: 36,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: customdivider(color: Colors.orange),
        )
      ],
    );
  }
}
