import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Catogry extends StatelessWidget {
  const Catogry({super.key, required this.titel1, required this.tiele2});
  final String titel1, tiele2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel1,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.black),
        ),
        const Spacer(),
        Text(
          tiele2,
          style:
              AppStyles.styleRegular14(context).copyWith(color: Colors.black),
        ),
        const SizedBox(
          width: 16,
        ),
        SizedBox(height: 15, child: Image.asset("Asset/image/Vector.png"))
      ],
    );
  }
}
