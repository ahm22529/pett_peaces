import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/customdialog.dart';

class buttomshowalert extends StatelessWidget {
  const buttomshowalert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: "ارسال",
          onPressed: () {
            showDialog(
              context: context,
              builder: (builder) => CustomDialog(),
            );
          },
        ),
      ],
    );
  }
}
