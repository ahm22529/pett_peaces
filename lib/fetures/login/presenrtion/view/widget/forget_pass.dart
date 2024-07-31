import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/enteremail.dart';

class forgepasss extends StatelessWidget {
  const forgepasss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (builder) => enteremailb())),
          child: Text(
            "نسيت كلمة المرور؟",
            style: AppStyles.styleRegular14(context)
                .copyWith(fontSize: 12, color: const Color(0xffF78E32)),
          ),
        ),
      ],
    );
  }
}
