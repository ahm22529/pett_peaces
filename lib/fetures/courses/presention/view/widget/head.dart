import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/videoplay.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset("Asset/image/cute-greyhound-dog-playing-outside 1.png"),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
        )),
        const Positioned(
          bottom: 10,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: vidoplay(),
          ),
        ),
        Positioned(
            left: 8,
            bottom: -30,
            child: Image.asset("Asset/image/pawprint 8.png"))
      ],
    );
  }
}
