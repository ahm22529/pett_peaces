import 'package:flutter/material.dart';

class CategoryButtonhome extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final String imagePath;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;

  const CategoryButtonhome({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.imagePath,
    this.height = 200,
    this.borderRadius = 5,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 0,
              top: -MediaQuery.of(context).size.width * .07,
              child: Image.asset(
                imagePath,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  text,
                  style: textStyle ??
                      const TextStyle(
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
