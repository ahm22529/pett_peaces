import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/order/domain/entity/booking_eneity.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/chartertic.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/chooseservices.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/headeriteam.dart';

class iteamorder extends StatelessWidget {
  const iteamorder({
    super.key,
    required this.bookingEneity,
  });
  final BookingEneity bookingEneity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headeriteam(
              bookingEneity: bookingEneity,
            ),
            const SizedBox(
              height: 20,
            ),
            chartertics(
              bookingEneity: bookingEneity,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "الخدمات المختارة",
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            ChooseServices(
              services: bookingEneity.service,
            )
          ],
        ),
      ),
    );
  }
}
