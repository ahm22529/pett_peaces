import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/widget/bodychangelang.dart';

class Changelang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("Asset/image/Back.png")),
        title: Text(
          " تغير اللغة",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyChangeLang(),
    );
  }
}
