import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/accountappbar.dart';

class bodyfristcontiner extends StatelessWidget {
  const bodyfristcontiner({
    super.key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
  });

  final VoidCallback toggleEditingMode, togglecacelingMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        acountappbar(
          toggleEditingMode: toggleEditingMode,
          togglecacelingMode: togglecacelingMode,
        ),
        Image.asset("Asset/image/acc.png"),
        Text(
          "روز",
          style: AppStyles.styleRegular24(context).copyWith(
              fontSize: 28, fontWeight: FontWeight.w600, color: Colors.orange),
        ),
        Text(
          "قط شيراز",
          style: AppStyles.styleRegular24(context).copyWith(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xff020202).withOpacity(.5)),
        )
      ],
    );
  }
}
