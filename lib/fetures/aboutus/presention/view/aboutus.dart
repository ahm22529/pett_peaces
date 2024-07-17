import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/aboutus/presention/view/widget/bodyaboutus.dart';

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("Asset/image/Back.png")),
        title: Text(
          " حول خدمات Petty Peace",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Bodyaboutus(),
    );
  }
}
