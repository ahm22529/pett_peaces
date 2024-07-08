import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/titelandsub.dart';

class chartertics extends StatelessWidget {
  const chartertics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titelsub(
          titel: 'الحيوان المختار',
          subtitel: 'ماريو',
        ),
        titelsub(
          titel: 'تاريخ الحجز من',
          subtitel: '24-5-2024',
        ),
        titelsub(
          subtitel: 'إلي',
          titel: '29-5-2024',
        )
      ],
    );
  }
}
