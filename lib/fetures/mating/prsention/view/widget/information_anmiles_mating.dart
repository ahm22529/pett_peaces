import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

class InformationAnmilesMating extends StatelessWidget {
  const InformationAnmilesMating({
    super.key,
    required this.anmilesEntity,
  });
  final AnmilesEntity anmilesEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .21,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(anmilesEntity.namee.substring(0, 10),
                        style: AppStyles.stylesemi20(context).copyWith(
                          color: Color(0xfff020202),
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
                Text("(${anmilesEntity.typee})",
                    style: AppStyles.stylesemi20(context).copyWith(
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                    ))
              ],
            ),
            Text(
              anmilesEntity.des,
              style: AppStyles.styleMedium10(context)
                  .copyWith(color: Color(0xff8A8A8A)),
            ),
          ],
        ),
        Image.asset("Asset/image/Frame 1000004215.png")
      ],
    );
  }
}
