import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/countiteam.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/informationiteam.dart';

class pricevulemname extends StatelessWidget {
  const pricevulemname({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const informtionorderiteam(),
            const Spacer(),
            Image.asset("Asset/image/ggg.png"),
          ],
        ),
        const SizedBox(
          height: 29,
        ),
        Countiteam()
      ],
    );
  }
}
