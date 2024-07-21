import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customlistview.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/gridview.dart';

class BodyStore extends StatelessWidget {
  const BodyStore({super.key, required this.product});
  final List<ProducEntity> product;
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 28, child: Customlistview()),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 72,
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, top: 20),
              child: CustomGridViewstore(),
            ))
      ],
    );
  }
}
