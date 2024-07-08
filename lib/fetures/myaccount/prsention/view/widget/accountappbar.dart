import 'package:flutter/material.dart';

class acountappbar extends StatelessWidget {
  const acountappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/Back.png"),
        Spacer(),
        Image.asset("Asset/image/dasdasd.png"),
        SizedBox(
          width: 15,
        ),
        Image.asset("Asset/image/fff.png")
      ],
    );
  }
}
