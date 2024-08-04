import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/detailsorder/presention/view/widget/iteamdetails.dart';
import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/iteam_order.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/grid_view.dart';

import '../../../../../core/utiles/sttyel.dart';

class BodyorderDetails extends StatelessWidget {
  final UserEntity userEntitymodel;
  final OrderEntity orderEntityn;

  BodyorderDetails(
      {super.key, required this.userEntitymodel, required this.orderEntityn});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const iteamorderdetails(),
          const SizedBox(
            height: 44,
          ),
          Text(
            "المنتجات",
            style: AppStyles.styleMedium18(context)
                .copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: IteamOrder(
            products: orderEntityn.prod,
            userEntitymodel: userEntitymodel,
          ))
        ],
      ),
    );
  }
}
