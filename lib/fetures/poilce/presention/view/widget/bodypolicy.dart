import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class BodyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد هذا النص هو مثال لنص ",
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
