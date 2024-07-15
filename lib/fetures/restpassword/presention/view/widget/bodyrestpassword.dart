import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/newpassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/opt.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/timedaown.dart';

class BodyRestPassword extends StatelessWidget {
  const BodyRestPassword({super.key});

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
                    const opt(),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Custombuttom(
                          titel: 'إرسال',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => NewPassWord()));
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

        ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: customdivider(color: Colors.orange),
            )
      ],
    );
  }
}
