import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/buttomshowdetails.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/info_and_header.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ItemBooktin extends StatelessWidget {
  final UserEntity userEntitymodel;
  final OrderEntity orderEntity;
  const ItemBooktin(
      {super.key, required this.userEntitymodel, required this.orderEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: Column(
          children: [
            const Headerordersection(),
            const SizedBox(height: 20),
            const Infoorder(),
            buttomshowdetails(
              userEntitymodel: userEntitymodel,
              orderEntity: orderEntity,
            ),
          ],
        ),
      ),
    );
  }
}
