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
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: SizedBox(height: 30, width: 30, child: Image.asset(img))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
        ],
      ),
    );
  }
}
