import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/domain/entity/booking_eneity.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/titelandsub.dart';

class chartertics extends StatelessWidget {
  const chartertics({
    super.key,
    required this.bookingEneity,
  });
  final BookingEneity bookingEneity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titelsub(
          titel: 'الحيوان المختار',
          subtitel: bookingEneity.price ?? "",
        ),
        titelsub(
          titel: 'تاريخ الحجز من',
          subtitel: bookingEneity.statrdate,
        ),
        titelsub(
          subtitel: bookingEneity.enddate,
          titel: 'إلي',
        )
      ],
    );
  }
}
