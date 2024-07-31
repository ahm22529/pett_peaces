import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/buttomcotchingacount.dart';

class Continerbuttom extends StatelessWidget {
  const Continerbuttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.white, offset: Offset(0, 0), spreadRadius: 16),
      ]),
      child: const Buttomcountactcotch(),
    );
  }
}
