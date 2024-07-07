import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/emailandphone.dart';

class informationcontact extends StatelessWidget {
  const informationcontact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          "نبذة عن الطبيب",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص ",
          style: AppStyles.styleRegular14(context),
        ),
        SizedBox(
          height: 16,
        ),
        emailandphone(),
      ],
    );
  }
}
