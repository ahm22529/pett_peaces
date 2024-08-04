import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final String imagePath;

  CategoryButton({
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
              right: -10,
              top: -20,
              child: Image.asset(
                imagePath,
                height: 50,
                width: 60,
              ),
            ),
            Positioned(
              right: 55, // Adjust this value as needed
              child: FittedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
