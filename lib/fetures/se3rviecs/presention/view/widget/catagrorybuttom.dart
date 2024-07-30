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
    return FittedBox(
      child: Container(
        height: MediaQuery.of(context).size.height * .09,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
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
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: -40,
                  child: Image.asset(imagePath),
                  right: 0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
