import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class avalibal extends StatelessWidget {
  const avalibal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/target.png"),
        Text(
          "متاح للتدريب ",
          style: AppStyles.styleMedium12(context)
              .copyWith(color: Color(0xff3A599C), fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
