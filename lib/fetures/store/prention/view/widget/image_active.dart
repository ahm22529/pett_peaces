import 'package:flutter/material.dart';

class Imageacive extends StatelessWidget {
  final Color color;
  final String imagePath; // مسار الصورة

  const Imageacive({
    Key? key,
    required this.color,
    required this.imagePath, // استقبال مسار الصورة
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFDDCBF),
        border: Border.all(color: color),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * .12,
        child: Image.network(
          imagePath, // استخدام مسار الصورة المرسل
          fit: BoxFit.cover, // ضبط الصورة بشكل مناسب داخل الContainer
        ),
      ),
    );
  }
}
