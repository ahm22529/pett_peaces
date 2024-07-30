import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Buttomcobaon extends StatelessWidget {
  const Buttomcobaon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xffF78E32)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 17.0, vertical: 10),
        child: Center(
          child: Text(
            "تطبيق",
            style: AppStyles.styleRegular14(context)
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}