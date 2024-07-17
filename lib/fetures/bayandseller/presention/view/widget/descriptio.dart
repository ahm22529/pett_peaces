import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';

class description extends StatelessWidget {
  const description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "الوصف",
            style: AppStyles.styleMedium18(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، تولد مثل هذا النص أو العديد من النصوص ",
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xff333333)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "سبب البيع",
            style: AppStyles.styleMedium18(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، تولد مثل هذا النص أو العديد من النصوص ",
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xff333333)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "صور إضافية (24)",
            style: AppStyles.styleMedium18(context).copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          show(),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
