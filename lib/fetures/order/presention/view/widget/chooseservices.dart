import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/iteamchooseservices.dart';

class chooseservices extends StatelessWidget {
  const chooseservices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        iteamchooseservice(),
        SizedBox(
          width: 5,
        ),
        iteamchooseservice(),
        SizedBox(
          width: 5,
        ),
        iteamchooseservice(),
      ],
    );
  }
}
