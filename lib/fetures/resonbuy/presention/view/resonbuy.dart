import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/custom_text_filed_email.dart';
import 'package:pett_peaces/fetures/resonbuy/presention/view/widget/bodyresonbay.dart';
import 'package:pett_peaces/fetures/resonbuy/presention/view/widget/customtextfiledreson.dart';

class resonbay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("Asset/image/Back.png")),
        title: Text(
          " عرض البيع",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: bodyresonbay(),
    );
  }
}
