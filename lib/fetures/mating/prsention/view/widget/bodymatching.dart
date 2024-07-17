import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/iteamlistview.dart';

class BodyMating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
            child: iteamlistviewami(
              widget: buttomanmandmating(
                text: "الغاء العرض",
                image: "Asset/image/remove-circle.png",
                color: Colors.red,
                onTap: () {},
              ),
            )));
  }
}
