import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteamcontiner.dart';

class HeaderAndBody extends StatelessWidget {
  const HeaderAndBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            ItemContainer(),
            SizedBox(
              width: 8,
            ),
            ItemContainer(),
            SizedBox(
              width: 8,
            ),
            ItemContainer(),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Bodyofheader()
      ],
    );
  }
}
