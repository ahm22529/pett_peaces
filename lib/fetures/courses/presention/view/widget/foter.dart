import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/buttomcourses.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/priceanddiscount.dart';

class foter extends StatelessWidget {
  const foter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttomcours(
          titel: 'طلب إشتراك',
          onPressed: () {},
        ),
        const SizedBox(
          width: 48,
        ),
        Text(
          "%20 off",
          style: AppStyles.styleMedium10(context)
              .copyWith(color: Colors.black, fontSize: 12),
        ),
        const SizedBox(
          width: 8,
        ),
        const priceanddiscount(),
      ],
    );
  }
}
