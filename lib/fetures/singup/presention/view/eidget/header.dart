import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "مرحبا بك ",
          style: AppStyles.stylesmedium32(context),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   أهلا بك في Petty Peace\n أكمل بيناتك لمتابعة تسجيل الدخول       ",
          style: AppStyles.styleRegular14(context)
              .copyWith(color: const Color(0xff8A8A8A)),
        ),
      ],
    );
  }
}
