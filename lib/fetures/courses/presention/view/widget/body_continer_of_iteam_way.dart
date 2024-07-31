import 'package:flutter/material.dart';

class BodyContinerofWay extends StatelessWidget {
  const BodyContinerofWay({
    super.key,
    required this.image,
    required this.text1,
  });

  final String image;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 32,
          height: 32,
        ),
        const SizedBox(width: 16),
        Text(
          text1,
          style: TextStyle(
            fontFamily: 'Changa',
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: const Color(0xFF00070D).withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
