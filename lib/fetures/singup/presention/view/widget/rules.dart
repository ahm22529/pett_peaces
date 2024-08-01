import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Rules extends StatelessWidget {
  const Rules({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      style: AppStyles.styleRegular14(context).copyWith(fontSize: 12),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const TextSpan(text: 'لقد قرأت ووافقت على '),
        const TextSpan(
          text: 'سياسة الخصوصية',
          style: TextStyle(color: Color(0xffF78E32)),
        ),
        const TextSpan(text: ' و'),
        const TextSpan(
          text: 'شروط الخدمة\n',
          style: TextStyle(color: Colors.black),
        ),
        const TextSpan(text: 'و'),
        const TextSpan(
          text: 'إرشادات المجتمع.',
          style: TextStyle(color: Color(0xffF78E32)),
        ),
      ],
    ));
  }
}
