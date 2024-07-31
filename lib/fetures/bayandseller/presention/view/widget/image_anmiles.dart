import 'package:flutter/material.dart';

class Imageanmiles extends StatelessWidget {
  const Imageanmiles({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image.network(img);
  }
}
