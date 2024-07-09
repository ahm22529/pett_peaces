import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/bodyaccount.dart';

class Acountff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Custombackground(
          image: 'Asset/image/accountback.png', wideget: BodyAccount()),
    );
  }
}
