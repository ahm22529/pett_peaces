import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/tabbar.dart';

class ServicesHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "أسعار الخدمات",
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
      ],
    );
  }
}
