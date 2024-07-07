import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class emailandphone extends StatelessWidget {
  const emailandphone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/call.png"),
        const SizedBox(
          width: 10,
        ),
        Text(
          "+966 50039387",
          style: AppStyles.styleRegular14(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
