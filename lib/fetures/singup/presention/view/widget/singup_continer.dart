import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/body_singup.dart';

class Singupcontiner extends StatelessWidget {
  const Singupcontiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const BodySingUp(),
    );
  }
}
