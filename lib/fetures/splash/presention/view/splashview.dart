import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/custombackground.dart';
import 'package:pett_peaces/fetures/splash/presention/view/widget/bodysplahview.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Custombackground(
        image: 'Asset/image/splash.png',
        wideget: BodySplahView(),
      ),
    );
  }
}
