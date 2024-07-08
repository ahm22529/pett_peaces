import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/iteamlistview.dart';

class BodyMating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: iteamlistviewm(),
            ));
  }
}
