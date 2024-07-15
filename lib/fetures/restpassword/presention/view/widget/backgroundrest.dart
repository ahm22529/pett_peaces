import 'package:flutter/material.dart';

class backgoundcontiner extends StatelessWidget {
  const backgoundcontiner({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage(
                "Asset/image/OPSEG70 1.png"), // Replace with your image asset
            fit: BoxFit.cover,
          ),
          color: color),
    );
  }
}
