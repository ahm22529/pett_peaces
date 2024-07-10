import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodyfristcontiner.dart';

class fristcontiner extends StatelessWidget {
  const fristcontiner({
    super.key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
  });
  final VoidCallback toggleEditingMode, togglecacelingMode;
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
        child: bodyfristcontiner(
          toggleEditingMode: toggleEditingMode,
          togglecacelingMode: togglecacelingMode,
        ),
      ),
    );
  }
}
