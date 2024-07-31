import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/body_continer_of_iteam_way.dart';

class CreditCardWidget extends StatelessWidget {
  final String text1, image;
  final void Function()? onTap;
  const CreditCardWidget(
      {super.key, required this.text1, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BodyContinerofWay(image: image, text1: text1),
        ),
      ),
    );
  }
}
