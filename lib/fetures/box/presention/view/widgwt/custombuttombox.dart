import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class custombuttombox extends StatelessWidget {
  const custombuttombox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          onPressed: () {},
          titel: 'ادفع',
        )
      ],
    );
  }
}
