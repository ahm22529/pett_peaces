import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class InfoAnmales1 extends StatelessWidget {
  const InfoAnmales1({
    super.key,
    required this.tt,
  });
  final String tt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff101010).withOpacity(.2),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            tt,
            style: AppStyles.styleMedium18(context),
          ),
        ),
      ),
    );
  }
}

class InfoAnmales extends StatelessWidget {
  const InfoAnmales({
    super.key,
    required this.tt,
  });
  final String tt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff101010).withOpacity(.2),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65.0, vertical: 9),
        child: FittedBox(
          child: Text(
            tt,
            style: AppStyles.styleMedium18(context),
          ),
        ),
      ),
    );
  }
}
