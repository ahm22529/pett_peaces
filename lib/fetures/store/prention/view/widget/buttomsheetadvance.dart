import 'package:flutter/material.dart';

import 'bodycontinerofadvance.dart';

class CustomButtomShhetadvance extends StatelessWidget {
  const CustomButtomShhetadvance({super.key, required this.lis});
  final List lis;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 020.0, vertical: 20),
        child: bodycontinerofbuttomsheet(lis: lis),
      ),
    );
  }
}
