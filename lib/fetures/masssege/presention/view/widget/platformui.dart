import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';

import 'package:pett_peaces/fetures/masssege/presention/view/widget/bodymasssage.dart';

import 'package:pett_peaces/fetures/masssege/presention/view/widget/tabletui.dart';


class Platformuimas extends StatelessWidget {
  const Platformuimas({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(MobileLauyOut:(context)=> BodyMassege(onItemSelected: (int value) {  },), TabletLayOut: (context)=>Tabletmassui(), DeskTopLayOut: (context)=>Tabletmassui());
  }
}