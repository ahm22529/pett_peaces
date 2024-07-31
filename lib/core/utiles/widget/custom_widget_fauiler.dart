import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class CustomWidgetfauier extends StatelessWidget {
  const CustomWidgetfauier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("Asset/image/error.png"),
        ),
        // ,ignore: prefer_const_constructors
        // ignore: prefer_const_constructors
        SizedBox(
          height: 15,
        ),
        Text(
          "الرجاء المحاوله ف وقت  اخر ",
          style: AppStyles.stylesmedium32(context),
        ),
      ],
    );
  }
}
