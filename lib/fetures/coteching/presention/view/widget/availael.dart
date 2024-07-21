import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';

class avalibal extends StatelessWidget {
  const avalibal({
    super.key,
    required this.cotachEntity,
  });
  final CotachEntity cotachEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/target.png"),
        Text(
          cotachEntity.isavliabel ? "غير متاح للتدريب" : "متاح للتدريب ",
          style: AppStyles.styleMedium12(context).copyWith(
              color: cotachEntity.isavliabel ? Colors.red : Color(0xff3A599C),
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
