import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/availael.dart';

class nameandstuts extends StatelessWidget {
  const nameandstuts({
    super.key,
    required this.cotachEntity,
  });
  final CotachEntity cotachEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cotachEntity.namee,
          style: AppStyles.stylesemi20(context).copyWith(
              color: const Color(0xfff020202), fontWeight: FontWeight.w600),
        ),
        avalibal(
          cotachEntity: cotachEntity,
        ),
      ],
    );
  }
}
