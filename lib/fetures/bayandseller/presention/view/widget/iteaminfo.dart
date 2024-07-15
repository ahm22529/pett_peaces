import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class iteaminfo extends StatelessWidget {
  const iteaminfo({
    super.key, required this.text1, required this.text2,
  });
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         text1,
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        Text(
         text2,
          style:
              AppStyles.styleRegular14(context).copyWith(color: Color(0xffE6E6E6)),
        ),
      ],
    );
  }
}
