import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Buttomanmandmating extends StatelessWidget {
  const Buttomanmandmating({
    super.key,
    required this.text,
    required this.image,
    required this.color,
    required this.onTap,
  });
  final String text, image;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 5),
          child: Center(
            child: Bodycontiner(image: image, text: text),
          ),
        ),
      ),
    );
  }
}

class Bodycontiner extends StatelessWidget {
  const Bodycontiner({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: AppStyles.styleRegular14(context)
              .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
