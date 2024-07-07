import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class informatonanmiles extends StatelessWidget {
  const informatonanmiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "رابسون",
                    style: AppStyles.stylesemi20(context).copyWith(
                      color: Color(0xfff020202),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: "(كلب)",
                    style: AppStyles.stylesemi20(context).copyWith(
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "بلاك جاك / 8 شهور",
              style: AppStyles.styleMedium10(context)
                  .copyWith(color: Color(0xff8A8A8A)),
            ),
          ],
        ),
        Image.asset("Asset/image/Frame 1000004215.png")
      ],
    );
  }
}
