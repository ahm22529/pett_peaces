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
      height: 25,
      color: const Color(0xffFDDCBF),
      child: Image.asset(imaeg),
    );
  }
}
