import 'package:flutter/material.dart';

class customtextfiledstore extends StatelessWidget {
  const customtextfiledstore({
    super.key,
    required this.name,
    required this.textEditingController,
  });
  final TextEditingController textEditingController;
  final String name;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: name,
          hintStyle: const TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Color(0xFFB5B5B5),
            height: 1.4,
          ),
          border: InputBorder.none),
      textAlign: TextAlign.right,
    );
  }
}
