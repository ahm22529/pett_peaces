import 'package:flutter/material.dart';

class imagedog extends StatelessWidget {
  const imagedog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .21,
      decoration: const BoxDecoration(
        color: Color(0xffDF8639),
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/OPSEG70 1.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
