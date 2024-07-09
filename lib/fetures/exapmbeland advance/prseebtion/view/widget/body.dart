import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteamcontiner.dart';

class Bodyofheader extends StatelessWidget {
  const Bodyofheader({
    super.key,
    this.fontSize = 14,
  });
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(
          "أمثلة ونصائح لكل أنواع الطعام",
          style: AppStyles.styleRegular14(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: fontSize),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس \nالمساحة، لقد تم توليد هذا النص من \nمولد النص العربى، حيث يمكنك أن تولد مثل هذا\n النص أو العديد من النصوص الأخرىهذا النص هو\n مثال لنص يمكن أن يستبدل في نفس المساحة،",
          style: AppStyles.styleMedium10(context),
        ),
      ],
    );
  }
}
