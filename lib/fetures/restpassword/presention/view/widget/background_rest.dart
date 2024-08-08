import 'package:flutter/material.dart';

class BackGoundContiner extends StatelessWidget {
  const BackGoundContiner({
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
            image:  AssetImage(
                "Asset/image/OPSEG70 1.png"), // Replace with your image asset
            fit: BoxFit.cover,
          ),
          color: color),
    );
  }
}
