import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/detailsorder/presention/view/orderdetails.dart';
import 'package:pett_peaces/fetures/order/presention/order.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/titelandsub.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/bodybook.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/header.dart';

class Bookting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("Asset/image/Back.png"),
        title: Text(
          " طلباتي",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyBookting(),
    );
  }
}
