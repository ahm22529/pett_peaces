import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/custom_list_view.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/grid_view.dart';

class BodyStore extends StatelessWidget {
  const BodyStore(
      {super.key, required this.product, required this.userEntitymodel});
  final List<ProducEntity> product;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 28, child: Customlistview()),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 72,
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, top: 20),
              child: CustomGridViewstore(
                userEntitymodel: userEntitymodel,
              ),
            ))
      ],
    );
  }
}
