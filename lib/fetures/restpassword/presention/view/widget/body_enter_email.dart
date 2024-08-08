import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/custom_text_filed_email.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';

import 'package:pett_peaces/fetures/restpassword/presention/view/rest_password.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/buttom_comfrim__rest.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/custom_divider.dart';

class BodyEnteremail extends StatefulWidget {
  const BodyEnteremail({super.key});

  @override
  State<BodyEnteremail> createState() => _BodyEnteremailState();
}

class _BodyEnteremailState extends State<BodyEnteremail> {
  GlobalKey<FormState> globalKey = GlobalKey();
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Customdivider(color: const Color(0xffD9D9D966).withOpacity(.4)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Form(
                key: globalKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text("إسترجاع كلمة الحساب",
                        style: AppStyles.stylesemi20(context)
                            .copyWith(color: Colors.black)),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                        "   من فضلك قم بإدخال البريد الإلكتروني\nحتي نتمكن من إرسال الكود",
                        style: AppStyles.styleRegular14(context)),
                    const SizedBox(
                      height: 40,
                    ),
                    Textformfiledemail(
                      onSaved: (v) {
                        setState(() {
                          email = v!;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    BlocListener<CheckemailCubit, CheckemailState>(
                      listener: (context, state) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Restpassword(
                                      email: email,
                                    )));
                      },
                      child: Buttomcomfrimrest(
                        name: 'إرسال',
                        onPressed: () {
                          if (globalKey.currentState!.validate()) {
                            globalKey.currentState!.save();
                            context.read<CheckemailCubit>().checkEmail(
                                {"email": email},
                                "forget-password/check-email");
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .11,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Customdivider(
            color: Colors.orange.withOpacity(.4),
          ),
        ),
      ],
    );
  }
}
