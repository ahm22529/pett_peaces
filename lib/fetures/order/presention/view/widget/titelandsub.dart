import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class titelsub extends StatelessWidget {
  const titelsub({
    super.key,
    required this.titel,
    required this.subtitel,
  });
  final String titel, subtitel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titel,
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          subtitel,
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w500, color: Colors.orange),
        ),
      ],
    );
  }
}
