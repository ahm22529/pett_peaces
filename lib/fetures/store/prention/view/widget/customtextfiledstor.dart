import 'package:flutter/material.dart';

class customtextfiledstore extends StatelessWidget {
  const customtextfiledstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'ابحث المنتجات',
        hintStyle: TextStyle(
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: Color(0xFFB5B5B5),
          height: 1.4,
        ),
        border: InputBorder.none,
      ),
      textAlign: TextAlign.right,
    );
  }
}
