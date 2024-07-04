import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/listviewstore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttomseller.dart';

class BodyContiner extends StatelessWidget {
  const BodyContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .12,
              ),
              Text(
                "الوصف",
                style: AppStyles.styleMedium18(context)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة\nلقد تم توليد هذا النص من مولد النص العربى، \n، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص ",
                style: AppStyles.styleRegular14(context)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة\nلقد تم توليد هذا النص من مولد النص العربى، \n، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص ",
                style: AppStyles.styleRegular14(context)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "منتجات مقترحة",
                style: AppStyles.styleMedium18(context)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .26,
                  child: const gridviewstore()),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        buttomsell(),
      ],
    );
  }
}
