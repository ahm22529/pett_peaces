import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';

import 'package:pett_peaces/fetures/masssege/presention/view/widget/body_masssage.dart';

import 'package:pett_peaces/fetures/masssege/presention/view/widget/tabletui.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Platformuimas extends StatelessWidget {
  const Platformuimas(
      {super.key, required this.token, required this.userEntity});
  final String token;
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => BodyMassege(
              onItemSelected: (int value) {},
              token: token,
              userEntity: userEntity,
            ),
        TabletLayOut: (context) => Tabletmassui(
              token: '',
              userEntity: userEntity,
            ),
        DeskTopLayOut: (context) => Tabletmassui(
              token: '',
              userEntity: userEntity,
            ));
  }
}
