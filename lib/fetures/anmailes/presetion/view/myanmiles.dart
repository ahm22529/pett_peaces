import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/bodyanmiles.dart';

class Myanmiles extends StatelessWidget {
  const Myanmiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("Asset/image/Back.png"),
        title: Text(
          "  حيواناتي",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyAnmiles(),
    );
  }
}
