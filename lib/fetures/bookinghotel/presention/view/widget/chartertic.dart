import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/entity/booking_eneity.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/view/widget/titel_and_sub.dart';

class Chartertics extends StatelessWidget {
  const Chartertics({
    super.key,
    required this.bookingEneity,
  });
  final BookingEneity bookingEneity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Titelsub(
          titel: 'الحيوان المختار',
          subtitel: bookingEneity.price,
        ),
        Titelsub(
          titel: 'تاريخ الحجز من',
          subtitel: bookingEneity.statrdate,
        ),
        Titelsub(
          subtitel: bookingEneity.enddate,
          titel: 'إلي',
        )
      ],
    );
  }
}
