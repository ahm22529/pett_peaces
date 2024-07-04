import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class location extends StatelessWidget {
  const location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("Asset/image/location.png"),
      title: Text("التجمع الخامس,الحي السابع ",
          style: AppStyles.styleMedium12(context)),
    );
  }
}
