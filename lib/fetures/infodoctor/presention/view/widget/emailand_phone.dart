import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class emailandphone extends StatelessWidget {
  const emailandphone({
    super.key,
    required this.titel,
    required this.imagee,
  });
  final String titel, imagee;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagee),
        const SizedBox(
          width: 10,
        ),
        Text(
          titel,
          style: AppStyles.styleRegular14(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
