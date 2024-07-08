import 'package:flutter/material.dart';

import '../../../../../core/utiles/sttyel.dart';

class iteamchooseservice extends StatelessWidget {
  const iteamchooseservice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Color(0xffFFE2C9)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
        child: Text(
          "صالون",
          style:
              AppStyles.styleMedium12(context).copyWith(color: Colors.orange),
        ),
      ),
    );
  }
}
