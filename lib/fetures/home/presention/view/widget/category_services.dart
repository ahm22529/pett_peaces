import 'package:flutter/material.dart';

class CategoryButtonhome extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final String imagePath;

  const CategoryButtonhome({super.key, 
    required this.backgroundColor,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 0,
              top: -20,
              child: Image.asset(
                imagePath,
                height: 80,
                width: 80,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontFamily: 'Changa',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
