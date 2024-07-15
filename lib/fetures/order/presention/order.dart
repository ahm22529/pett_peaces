import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/order/data/headermodel.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/bodybook.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/header.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/iteamchooseservices.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()=>Navigator.pop(context),
          child: Image.asset("Asset/image/Back.png")),
        title: Text(
          " حجوزاتي",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: bodybook(),
    );
  }
}
