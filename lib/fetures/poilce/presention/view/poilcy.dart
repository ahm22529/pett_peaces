import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/aboutus.dart';
import 'package:pett_peaces/fetures/poilce/presention/view/widget/bodypolicy.dart';

class policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("Asset/image/Back.png"),
        title: Text(
          "سياسة الخصوصية",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyPolicy(),
    );
  }
}
