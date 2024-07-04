import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class active extends StatelessWidget {
  const active({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: AppStyles.styleRegular14(context)
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
