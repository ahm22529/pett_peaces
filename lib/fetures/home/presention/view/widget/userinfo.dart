import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(
              'Asset/image/Ellipse 892.png'), // Ensure you have added the image in your assets folder
        ),
        const SizedBox(width: 8),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "AhmedHussen19@gmail.com",
              style: TextStyle(
                fontFamily: 'Changa',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                height: 1.4,
                color: Color(0xffb5b5b5),
              ),
              textAlign: TextAlign.right,
            ),
            Text(
              "أحمد حسين",
              style: TextStyle(
                fontFamily: 'Changa',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.4,
                color: Color(0xff020202),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        const Spacer(),
        Image.asset("Asset/image/Frame 1000004230.png"),
        const SizedBox(
          width: 8,
        ),
        Image.asset("Asset/image/Frame 1000004230.png"),
      ],
    );
  }
}
