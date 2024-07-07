import 'package:flutter/material.dart';

Widget buildRow(String title, String value, FontWeight fontWeight, Color color1,
    Color color2) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Changa',
            fontSize: 16,
            fontWeight: fontWeight,
            color: color1,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Changa',
            fontSize: 16,
            fontWeight: fontWeight,
            color: color2,
          ),
        ),
      ],
    ),
  );
}
