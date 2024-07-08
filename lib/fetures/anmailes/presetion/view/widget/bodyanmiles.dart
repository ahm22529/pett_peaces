import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam.dart';

class BodyAnmiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(child: Anmmalesmeacc()),
          buttomanmandmating(
            color: Colors.orange,
            text: 'إضافة حيوان جديد',
            image: 'Asset/image/jjjdjd.png',
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
