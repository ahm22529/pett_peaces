import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Iteamadd extends StatefulWidget {
  const Iteamadd({
    super.key,
  });

  @override
  State<Iteamadd> createState() => _IteamChangeState();
}

class _IteamChangeState extends State<Iteamadd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: DottedBorder(
        dashPattern: [8, 4],
        color: const Color(0xffF78E32),
        strokeWidth: 2,
        child: Container(
          // Adjusted width to make it rectangular
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 65.0),

          child: Center(
            child: Image.asset("Asset/image/add.png", fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
