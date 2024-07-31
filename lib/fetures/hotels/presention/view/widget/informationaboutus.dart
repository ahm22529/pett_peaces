import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/googe_lmaps.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/emailand_phone.dart';

class Informationaboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        Text(
          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد",
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const emailandphone(
          titel: '',
          imagee: '',
        ),
        const SizedBox(
          height: 12,
        ),
        const emailandphone(
          titel: '',
          imagee: '',
        ),
        const GoogelmapsContiner()
      ],
    );
  }
}
