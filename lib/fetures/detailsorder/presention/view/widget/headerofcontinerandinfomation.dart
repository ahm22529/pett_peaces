import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/titelandsub.dart';

class headerofcontiner extends StatelessWidget {
  const headerofcontiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            children: [
              TextSpan(
                text: 'رقم الطلب: ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '#12528290344ogd',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        Text(
          "تاريخ الطلب 14-4-2024",
          style: AppStyles.styleMedium10(context)
              .copyWith(color: const Color(0xff545454)),
        )
      ]),
    );
  }
}

class informationorderofcontiner extends StatelessWidget {
  const informationorderofcontiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titelsub(
          titel: 'طريقة الدفع',
          subtitel: 'عند الاستلام',
        ),
        titelsub(
          subtitel: 'عدد المنتجات',
          titel: '7',
        ),
        titelsub(
          subtitel: 'السعر',
          titel: '250\$',
        )
      ],
    );
  }
}
