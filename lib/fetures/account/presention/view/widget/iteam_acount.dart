import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/icons_custom.dart';

class Iteamaccount extends StatelessWidget {
  const Iteamaccount({
    super.key,
    required this.imaeg,
    required this.text,
  });
  final String imaeg, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Iconscustom(imaeg: imaeg),
        const SizedBox(
          width: 9,
        ),
        Text(
          text,
          style: AppStyles.styleRegular16(context).copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Container(
          color: Colors.white,
          child: Image.asset("Asset/image/mingcute_up-line.png"),
        ),
      ],
    );
  }
}
