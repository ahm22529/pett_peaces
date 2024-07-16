import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';

import 'package:pett_peaces/fetures/restpassword/presention/view/restpassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/buttomcomfrimrest.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';

class BodyEnteremail extends StatefulWidget {
  const BodyEnteremail({super.key});

  @override
  State<BodyEnteremail> createState() => _BodyEnteremailState();
}

class _BodyEnteremailState extends State<BodyEnteremail> {

  GlobalKey<FormState> globalKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: customdivider(color: Color(0xffD9D9D966).withOpacity(.4)),
      ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
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
                       Textformfiledemail(onSaved: (v ) {  },),
                      const SizedBox(
                        height: 16,
                      ),
                      buttomcomfrimrest(
                        name: 'إرسال',
                        onPressed: () {
                         if(globalKey.currentState!.validate())
                         {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const Restpassword()));
                         }
                        },
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: customdivider(color: Colors.orange.withOpacity(.4),),
        ),
      ],
    );
  }
}


