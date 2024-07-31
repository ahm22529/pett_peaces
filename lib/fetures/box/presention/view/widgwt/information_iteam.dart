import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

class Informtionorderiteam extends StatelessWidget {
  const Informtionorderiteam({
    super.key,
    required this.box,
  });
  final ProducEntity box;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          box.nameof,
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          box.shortdescription,
          style: AppStyles.styleMedium12(context),
        ),
      ],
    );
  }
}
