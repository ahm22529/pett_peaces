import 'package:flutter/material.dart';
class imagedog extends StatelessWidget {
  const imagedog({
    super.key,
    required this.img,
    required this.hig,
    required this.bo,
  });
  final String img;
  final double hig, bo;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: hig,
          decoration: const BoxDecoration(
            color: Color(0xffDF8639),
            image: DecorationImage(
              image: AssetImage(
                  "Asset/image/OPSEG70 1.png"), // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * .12,
            left: 0,
            right: 0,
            bottom: bo,
            child: Image.asset(img))
      ],
    );
  }
}
