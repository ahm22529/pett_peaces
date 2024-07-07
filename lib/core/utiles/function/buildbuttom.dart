import 'package:flutter/material.dart';

Widget buildButton(String text, Color textColor, Color backgroundColor) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: Color(0xFFE50000)),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Changa',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    ),
  );
}
