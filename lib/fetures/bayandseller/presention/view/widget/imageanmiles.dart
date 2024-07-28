import 'package:flutter/material.dart';

class imageanmiles extends StatelessWidget {
  const imageanmiles({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image.network(img);
  }
}
