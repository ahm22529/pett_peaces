import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/contact.dart';

class namedoctoreandcontact extends StatelessWidget {
  const namedoctoreandcontact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "د/أحمد محمد غالي",
          style: AppStyles.styleMedium18(context).copyWith(color: Colors.black),
        ),
        Text(
          "تخصص عظام وصدر",
          style: AppStyles.styleMedium12(context)
              .copyWith(color: const Color(0xff545454)),
        ),
        SizedBox(
          height: 50,
        ),
        contact()
      ],
    );
  }
}
