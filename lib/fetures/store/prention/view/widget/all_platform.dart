import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/body_store.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/mobile_ui.dart';

class Allplatform extends StatelessWidget {
  final List<ProducEntity> pro;
  final UserEntitymodel userEntitymodel;
  const Allplatform(
      {super.key, required this.pro, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => Mobileui(
              pro: pro,
              userEntitymodel: userEntitymodel,
            ),
        TabletLayOut: (context) => BodyStore(
              product: pro,
              userEntitymodel: userEntitymodel,
            ),
        DeskTopLayOut: (context) => BodyStore(
              product: pro,
              userEntitymodel: userEntitymodel,
            ));
  }
}
