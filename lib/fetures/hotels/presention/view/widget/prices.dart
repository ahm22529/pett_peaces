import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class price extends StatelessWidget {
  const price({
    super.key,
    required this.isactive,
  });

  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isactive,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "\$20  ",
              style: AppStyles.styleMedium12(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "لليوم الواحد ",
              style: AppStyles.styleMedium12(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Color(0xff8A8A8A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
