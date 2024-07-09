import 'package:flutter/material.dart';

class iconscustom extends StatelessWidget {
  const iconscustom({
    super.key,
    required this.imaeg,
  });

  final String imaeg;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDDCBF),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          imaeg,
          height: 20,
        ),
      ),
    );
  }
}
