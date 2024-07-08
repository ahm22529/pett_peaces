import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodyfristcontiner.dart';

class fristcontiner extends StatelessWidget {
  const fristcontiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/psps.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
        child: bodyfristcontiner(),
      ),
    );
  }
}
