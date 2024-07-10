import 'package:flutter/material.dart';

class SocialIconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/f.png"),
        const SizedBox(width: 20),
        Image.asset("Asset/image/i.png"),
        const SizedBox(width: 20),
        Image.asset("Asset/image/j.png"),
        const SizedBox(width: 20),
        Image.asset("Asset/image/f.png"),
      ],
    );
  }
}
