import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/contactus/data/model/inputusermodel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/buttomshowalert.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';

class Formsend extends StatefulWidget {
  const Formsend({super.key});

  @override
  State<Formsend> createState() => _FormsendState();
}

class _FormsendState extends State<Formsend> {
  String name = "";

  String email = "";

  String sub = "";

  String comm = "";

  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Textformfieldresoncon(
            maxline: 1,
            initialValue: '',
            onChanged: (String v) {
              setState(() {
                name = v;
              });
            },
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
          Textformfieldresoncon(
            initialValue: '',
            maxline: 1,
            onChanged: (String v) {
              setState(() {
                email = v;
              });
            },
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
          const SizedBox(
            height: 16,
          ),
          Textformfieldresoncon(
            maxline: 1,
            initialValue: '',
            onChanged: (String v) {
              setState(() {
                sub = v;
              });
            },
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
          const SizedBox(
            height: 16,
          ),
          Textformfieldresoncon(
            maxline: 5,
            initialValue: '',
            onChanged: (String v) {
              setState(() {
                comm = v;
              });
            },
          ),
          const SizedBox(
            height: 32,
          ),
          buttomshowalert(
            contactdata:
                Contactdata(name: name, email: email, contact: comm, sub: sub),
            globalKey: globalKey,
          ),
        ],
      ),
    );
  }
}
