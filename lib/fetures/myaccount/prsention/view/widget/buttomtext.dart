import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class buttomtext extends StatelessWidget {
  final Color color, colortext;
  final String text;

  const buttomtext({
    Key? key,
    required this.color,
    required this.text,
    required this.colortext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 9),
        child: Center(
          child: Text(
            text,
            style: AppStyles.stylesemi20(context).copyWith(
              color: colortext,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
