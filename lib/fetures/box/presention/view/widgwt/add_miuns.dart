import 'package:flutter/material.dart';

class AddMiuns extends StatelessWidget {
  const AddMiuns({super.key, required this.iconData});
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF78E32),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
