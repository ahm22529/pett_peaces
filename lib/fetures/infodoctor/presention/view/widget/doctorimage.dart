import 'package:flutter/material.dart';

class docotorimage extends StatelessWidget {
  const docotorimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/Frame 1000004256.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Image.asset(
          "Asset/image/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background-removebg-preview 1.png"),
    );
  }
}
