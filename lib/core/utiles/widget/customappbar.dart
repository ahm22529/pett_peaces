import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class customAppbar extends StatelessWidget {
  const customAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("Asset/image/Back.png"),
      title: Padding(
        padding: const EdgeInsets.only(right: 40.0),
        child: Text(
          "  د/أحمد محمد غالي",
          style: AppStyles.stylesemi20(context).copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
