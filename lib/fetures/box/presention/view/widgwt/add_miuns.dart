import 'package:flutter/material.dart';

class AddMiuns extends StatelessWidget {
  const AddMiuns({super.key, required this.iconData, required this.active});
  final IconData iconData;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:active? const Color(0xffF78E32):Colors.grey,
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
