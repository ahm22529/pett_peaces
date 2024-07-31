import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class HeaderAndSize extends StatelessWidget {
  const HeaderAndSize({
    super.key,
    required this.widget,
    required this.titel,
  });
  final String titel;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titel,
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w600, color: Colors.black)),
        const SizedBox(
          height: 16,
        ),
        widget,
      ],
    );
  }
}
