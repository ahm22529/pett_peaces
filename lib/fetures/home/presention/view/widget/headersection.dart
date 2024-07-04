import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Headersection extends StatelessWidget {
  const Headersection({
    super.key,
    required this.titel1,
    required this.titel2,
  });
  final String titel1, titel2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titel1,
          style: AppStyles.styleMedium18(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        Text(
          titel2,
          style: AppStyles.styleMedium18(context).copyWith(
              color: const Color(0xffF78E32), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
