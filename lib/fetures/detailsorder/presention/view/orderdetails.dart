import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/detailsorder/presention/view/widget/bodyorderdetails.dart';
import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';

import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class OrderDetails extends StatelessWidget {
  final UserEntity userEntitymodel;
  final OrderEntity orderEntity;
  const OrderDetails(
      {super.key, required this.userEntitymodel, required this.orderEntity});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("Asset/image/Back.png"),
        title: Text(
          " تفاصيل الطلب",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyorderDetails(
        userEntitymodel: userEntitymodel,
        orderEntityn: orderEntity,
      ),
    );
  }
}
