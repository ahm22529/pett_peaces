import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/rules.dart';

class AcceptsReuls extends StatelessWidget {
  const AcceptsReuls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (onChanged) {}),
        const Rules()
      ],
    );
  }
}
