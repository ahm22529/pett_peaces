import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class ButtomOrder extends StatelessWidget {
  final Color color;
  final Color colortext;
  final String text;
  const ButtomOrder(
      {super.key,
      required this.color,
      required this.colortext,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleMedium16(context).copyWith(color: colortext),
          ),
        ),
      ),
    );
  }
}
