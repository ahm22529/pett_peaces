import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/detailsorder/presention/view/widget/bodyorderdetails.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/listviewstore.dart';
import 'package:pett_peaces/fetures/order/presention/order.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/titelandsub.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/gridview.dart';

class OrderDetails extends StatelessWidget {
  final UserEntitymodel userEntitymodel;

  const OrderDetails({super.key, required this.userEntitymodel});
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
      body: BodyorderDetails(
        userEntitymodel: userEntitymodel,
      ),
    );
  }
}
