import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/bodystore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/mobileui.dart';



class Allplatform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => Mobileui(),
        TabletLayOut: (context) => const BodyStore(),
        DeskTopLayOut: (context) => BodyStore());
  }
}



