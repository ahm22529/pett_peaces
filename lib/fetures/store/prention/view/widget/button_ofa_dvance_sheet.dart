import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class Buttomadvancedsheet extends StatelessWidget {
  const Buttomadvancedsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Custombuttom(titel: "تطبيق", onPressed: () {}),
        ],
      ),
    );
  }
}
