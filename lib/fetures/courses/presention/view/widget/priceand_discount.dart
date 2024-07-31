import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';

class priceanddiscount extends StatelessWidget {
  const priceanddiscount({
    super.key,
    required this.courseseEntity,
  });
  final CourseseEntity courseseEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          courseseEntity.priceof,
          style: AppStyles.styleMedium18(context).copyWith(
              color: Color(0xffF78E32),
              fontSize: 20,
              decorationColor: Color(0xffF78E32)),
        )
      ],
    );
  }
}
