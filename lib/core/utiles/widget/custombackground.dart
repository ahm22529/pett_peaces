import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/account/presention/view/account.dart';

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
