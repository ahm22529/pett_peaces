import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/bodyanmiles.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/tabletui.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';

class PlatformuiMyanmiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => BodyAnmiles(),
        TabletLayOut: (context) => Tabletui(),
        DeskTopLayOut: (context) => Tabletui());
  }
}