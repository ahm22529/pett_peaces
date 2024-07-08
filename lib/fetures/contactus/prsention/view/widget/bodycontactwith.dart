import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/buttomshowalert.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';

import '../../../../../core/utiles/sttyel.dart';

class BodyContactwithpices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "    الأسم بالكامل      ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Textformfieldresoncon(
              maxline: 1,
              initialValue: '',
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "    البريد الإلكتروني      ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Textformfieldresoncon(
              initialValue: '',
              maxline: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "     العنوان      ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            const Textformfieldresoncon(
              maxline: 1,
              initialValue: '',
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "     الرساله      ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Textformfieldresoncon(
              maxline: 5,
              initialValue: '',
            ),
            SizedBox(
              height: 32,
            ),
            buttomshowalert(),
          ],
        ),
      ),
    );
  }
}
