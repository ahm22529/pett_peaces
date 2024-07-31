import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/opt.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/timedaown.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/cubit/varify_email_cubit.dart';

class BodyVarifyEmail extends StatefulWidget {
  const BodyVarifyEmail({super.key, required this.email, required this.token});
  final String email;
  final String token;
  @override
  State<BodyVarifyEmail> createState() => _BodyRestPasswordState();
}

class _BodyRestPasswordState extends State<BodyVarifyEmail> {
  String code = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              customdivider(color: const Color(0xffd9d9d966).withOpacity(.5)),
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
                  Text("  تفعيل الحساب",
                      style: AppStyles.stylesemi20(context)
                          .copyWith(color: Colors.black)),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                      "  \nادخل الكود الذي تم ارسالة الى${widget.email}  لتفعيل الحساب ",
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
                  Row(
                    children: [
                      Custombuttom(
                        titel: 'إرسال',
                        onPressed: () {
                          context
                              .read<VarifyEmailCubit>()
                              .createUserWithEmailAndPassword(
                                  endpoint: "auth/verify-email",
                                  token: widget.token,
                                  input: {"code": code});
                        },
                      ),
                    ],
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
      ],
    );
  }
}
