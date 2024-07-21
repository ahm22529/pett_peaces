import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/bodystore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/mobileui.dart';

class Allplatform extends StatelessWidget {
  final List<ProducEntity> pro;

  const Allplatform({super.key, required this.pro});
  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => Mobileui(
              pro: pro,
            ),
        TabletLayOut: (context) => BodyStore(
              product: pro,
            ),
        DeskTopLayOut: (context) => BodyStore(
              product: pro,
            ));
  }
}
