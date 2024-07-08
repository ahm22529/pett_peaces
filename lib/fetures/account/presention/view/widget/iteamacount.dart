import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/iconscustom.dart';

class iteamaccount extends StatelessWidget {
  const iteamaccount({
    super.key,
    required this.imaeg,
    required this.text,
  });
  final String imaeg, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconscustom(imaeg: imaeg),
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
        Spacer(),
        Container(
          color: Colors.white,
          child: Image.asset("Asset/image/mingcute_up-line.png"),
        ),
      ],
    );
  }
}
