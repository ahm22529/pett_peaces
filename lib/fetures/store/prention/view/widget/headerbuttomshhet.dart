import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Headerbottomsheet extends StatelessWidget {
  const Headerbottomsheet(
      {super.key, required this.titel11, required this.titel2});
  final String titel11, titel2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("Asset/image/icon1bttomshhet.png"),
        Text(
          titel11,
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          titel2,
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w500, color: Color(0xffF78E32)),
        )
      ],
    );
  }
}
