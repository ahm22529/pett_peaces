import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/hatag.dart';
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
        Row(
          children: [
            ItemContainer(),
            SizedBox(
              width: 8,
            ),
            ItemContainer(),
            SizedBox(
              width: 8,
            ),
            GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Hastag())),
                child: ItemContainer()),
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
