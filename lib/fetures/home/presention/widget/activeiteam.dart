import 'package:flutter/material.dart';

class ActiveIteam extends StatelessWidget {
  final String im, te;
  final Color color;

  const ActiveIteam({
    super.key,
    required this.im,
    required this.te,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(im),
          const SizedBox(height: 10),
          Text(te),
        ],
      ),
    );
  }
}
