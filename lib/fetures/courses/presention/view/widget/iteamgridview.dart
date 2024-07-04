import 'package:flutter/material.dart';

class CustomDateCard extends StatelessWidget {
  final String titel1, titel2, img;
  const CustomDateCard(
      {super.key,
      required this.titel1,
      required this.titel2,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black12, width: 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0x1A2E7A00),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Image.asset(
                  // Ensure the image file is placed in your assets directory
                  img,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titel1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xFF8A8A8A),
                    height: 1.4, // 140% line height
                  ),
                ),
                Text(
                  titel2,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF333333),
                    height: 1.4, // 140% line height
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
