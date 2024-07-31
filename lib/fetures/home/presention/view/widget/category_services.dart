import 'package:flutter/material.dart';

class CategoryButtonhome extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final String imagePath;

  CategoryButtonhome({
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
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  imagePath,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'Changa',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
