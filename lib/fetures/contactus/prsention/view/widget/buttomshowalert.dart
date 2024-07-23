import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/contactus/data/model/inputusermodel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/customdialog.dart';

class buttomshowalert extends StatelessWidget {
  const buttomshowalert({
    super.key, required this.contactdata,
  });
  final Contactdata contactdata;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: "ارسال",
          onPressed: () {
            showDialog(
              context: context,
              builder: (builder) => CustomDialog(
                contactdata: contactdata,
              ),
            );
          },
        ),
      ],
    );
  }
}
