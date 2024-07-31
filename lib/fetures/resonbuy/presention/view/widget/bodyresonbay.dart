import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/resonbuy/presention/view/widget/customtextfiledreson.dart';

class bodyresonbay extends StatelessWidget {
  const bodyresonbay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            "سعر البيع",
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          const Textformfieldreson(
            maxline: 1,
            initialValue: '250\$',
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "سعر البيع",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 16,
          ),
          const Textformfieldreson(
            maxline: 5,
            initialValue:
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، هذا النص أو العديد من النصوص الأخرى',
          ),
          const Spacer(),
          const Continerbuttom(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
