import 'package:flutter/material.dart';

class CustomBackgroundSinup extends StatelessWidget {
  const CustomBackgroundSinup(
      {super.key, required this.widget1, required this.widget2});
  final Widget widget1, widget2;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [widget1, widget2],
    ));
  }
}
