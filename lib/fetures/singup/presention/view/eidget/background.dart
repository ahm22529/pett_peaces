import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/singupcontiner.dart';

import 'imagedog.dart';

class CustomBackgroundSinup extends StatelessWidget {
  const CustomBackgroundSinup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const singupcontiner(),
          const Positioned(
            left: 0,
            right: 0,
            top: -0, // Adjust this value as needed
            child: imagedog(),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 5,
              child: Image.asset(
                  "Asset/image/photography-surprised-dog-looking-from-white-long-frame-banner-removebg-preview 1.png")),
        ],
      ),
    );
  }
}
