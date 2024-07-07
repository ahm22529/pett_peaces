import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("Asset/image/Frame 1000004257.png"),
        const SizedBox(
          width: 8,
        ),
        Image.asset("Asset/image/Frame 1000004257.png"),
        const SizedBox(
          width: 8,
        ),
        Image.asset("Asset/image/Frame 1000004257.png"),
      ],
    );
  }
}
