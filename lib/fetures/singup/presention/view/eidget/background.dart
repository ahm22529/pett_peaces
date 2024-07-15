import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sizeconfig.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/singupcontiner.dart';

import 'imagedog.dart';

class CustomBackgroundSinup extends StatelessWidget {
  const CustomBackgroundSinup({super.key, required this.widget1, required this.widget2});
  final Widget widget1, widget2;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        widget1,
        widget2
      ],
    ));
  }
}
