import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class priceanddiscount extends StatelessWidget {
  const priceanddiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\$30.99",
          style: AppStyles.styleMedium16(context).copyWith(
              color: Color(0xffFBCBA1),
              decoration: TextDecoration.lineThrough,
              fontWeight: FontWeight.w500),
        ),
        Text(
          "\$20.99",
          style: AppStyles.styleMedium18(context).copyWith(
              color: Color(0xffF78E32),
              fontSize: 20,
              decorationColor: Color(0xffF78E32)),
        )
      ],
    );
  }
}
