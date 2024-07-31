import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/entity/booking_eneity.dart';

class Headeriteam extends StatelessWidget {
  const Headeriteam({
    super.key,
    required this.bookingEneity,
  });
  final BookingEneity bookingEneity;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          children: [
            const TextSpan(
              text: 'رقم الطلب: ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: bookingEneity.numberoforder,
              style: const TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      Image.asset("Asset/image/delet.png")
    ]);
  }
}
