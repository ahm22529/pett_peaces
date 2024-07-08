import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class iteamchange extends StatelessWidget {
  const iteamchange({
    Key? key,
    required this.img,
    required this.text,
    required this.isactive,
  }) : super(key: key);

  final String img, text;
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: DottedBorder(
        dashPattern: [8, 4],
        color: isactive ? const Color(0xffF78E32) : Colors.black,
        strokeWidth: 1,
        child: Container(
          height: MediaQuery.of(context).size.height * .26,
          padding: const EdgeInsets.symmetric(
              horizontal: 27.0,
              vertical: 50), // تعديل المسافة الداخلية حسب الحاجة
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img, height: 80), // تعديل ارتفاع الصورة حسب الحاجة
              const SizedBox(height: 8),
              Text(
                text,
                style: AppStyles.styleRegular16(context)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
