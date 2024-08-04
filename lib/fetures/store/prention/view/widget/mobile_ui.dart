import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/grid_view.dart';

class Mobileui extends StatelessWidget {
  final List<ProducEntity> pro;
  const Mobileui({super.key, required this.pro, required this.userEntitymodel});
  final UserEntity userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: CustomGridViewstore(
        userEntitymodel: userEntitymodel,
      ),
    );
  }
}
