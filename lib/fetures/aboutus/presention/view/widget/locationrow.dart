import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class LocationRow extends StatelessWidget {
  final String text, img;

  const LocationRow({required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(img),
        const SizedBox(width: 10),
        Text(
          text,
          style: AppStyles.styleRegular14(context),
        ),
      ],
    );
  }
}
