
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class buttomcomfrimrest extends StatelessWidget {
  const buttomcomfrimrest({
    super.key,
    required this.name,
    this.onPressed,
  });
  final String name;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(titel: name, onPressed: onPressed),
      ],
    );
  }
}
