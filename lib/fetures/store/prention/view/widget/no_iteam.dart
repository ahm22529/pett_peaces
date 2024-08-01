import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class NoIteam extends StatelessWidget {
  const NoIteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("name"),
        SizedBox(),
        Text(
          "لا يوجد منتجات متوفره حاليا سوف يتم توفير المنتجات قريبا",
          style: AppStyles.styleRegular24(context),
        )
      ],
    );
  }
}
