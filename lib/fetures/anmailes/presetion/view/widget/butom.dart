import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';

class buttomanmandmating extends StatelessWidget {
  const buttomanmandmating({
    super.key,
    required this.text,
    required this.image,
    required this.color,required this.onTap,
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
            child: bodycontiner(image: image, text: text),
          ),
        ),
      ),
    );
  }
  
}




class bodycontiner extends StatelessWidget {
  const bodycontiner({
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
        SizedBox(
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
