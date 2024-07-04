import 'package:flutter/material.dart';

class Imageacive extends StatelessWidget {
  final Color color;

  const Imageacive({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.amber, border: Border.all(color: color)),
      child: Image.asset("Asset/image/Frame 1000004370.png"),
    );
  }
}
