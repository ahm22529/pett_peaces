import 'package:flutter/material.dart';

class Custombackground extends StatelessWidget {
  const Custombackground({
    super.key,
    required this.image,
    required this.wideget,
  });
  final String image;
  final Widget wideget;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
      ),
      wideget
    ]);
  }
}
