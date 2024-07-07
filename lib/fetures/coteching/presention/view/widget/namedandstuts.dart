import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/availael.dart';

class nameandstuts extends StatelessWidget {
  const nameandstuts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "محمد أحمد علي",
          style: AppStyles.stylesemi20(context).copyWith(
              color: const Color(0xfff020202), fontWeight: FontWeight.w600),
        ),
        const avalibal(),
      ],
    );
  }
}
