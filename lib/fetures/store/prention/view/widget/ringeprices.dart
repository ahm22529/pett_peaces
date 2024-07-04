import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class ringeprices extends StatelessWidget {
  const ringeprices({
    super.key,
  });

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
          "0-2000\$",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
