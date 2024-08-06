import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'dart:math';

class InformationAnmilesMating extends StatelessWidget {
  const InformationAnmilesMating({
    super.key,
    required this.anmilesEntity,
  });

  final AnmilesEntity anmilesEntity;

  @override
  Widget build(BuildContext context) {
    // تحديد عدد الحروف المتاحة، بحد أقصى 5 حروف
    String displayName =
        anmilesEntity.namee.substring(0, min(5, anmilesEntity.namee.length));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  child: FittedBox(
                    child: Text(
                      displayName,
                      style: AppStyles.stylesemi20(context).copyWith(
                        color: Color(0xfff020202),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Text(
                  "(${anmilesEntity.typee})",
                  style: AppStyles.stylesemi20(context).copyWith(
                    color: Colors.orange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              anmilesEntity.des,
              style: AppStyles.styleMedium10(context)
                  .copyWith(color: Color(0xff8A8A8A)),
            ),
          ],
        ),
        Image.asset("Asset/image/Frame 1000004215.png"),
      ],
    );
  }
}
