import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/check/presention/view/check.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/iteamway.dart';

class BodyBottomSheetOfWay extends StatelessWidget {
  const BodyBottomSheetOfWay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "أختر طريقة الدفع المناسبة",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        CreditCardWidget(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (builder) => Checkbokut())),
          text1: 'Credit Card',
          image: 'Asset/image/atm-card 1.png',
        ),
        const SizedBox(
          height: 16,
        ),
        const CreditCardWidget(
          text1: 'الدفع نقدي',
          image: 'Asset/image/money 1.png',
        ),
      ],
    );
  }
}
