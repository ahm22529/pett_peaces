import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/bodymasssage.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class Massage extends StatelessWidget {
  const Massage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyMassege(),
    );
  }
}
