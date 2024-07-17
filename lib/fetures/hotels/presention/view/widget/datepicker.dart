import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class datepic extends StatelessWidget {
  const datepic({
    super.key,
    required this.widget,
    required this.text,
  });

  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context).copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        widget,
      ],
    );
  }
}
