import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grid_view_home.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Gridviewservices extends StatelessWidget {
  const Gridviewservices({
    super.key,
    required this.userEntitymodel,
  });
  final UserEntity userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: CustomGridViewHome(
          userEntitymodel: userEntitymodel,
        ));
  }
}
