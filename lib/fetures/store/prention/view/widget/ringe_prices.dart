import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Ringeprices extends StatelessWidget {
  const Ringeprices({
    super.key,
    required this.uppervule,
    required this.lowervule,
  });
  final String uppervule, lowervule;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "السعر",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        Text(
          "$lowervule-$uppervule\$",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
