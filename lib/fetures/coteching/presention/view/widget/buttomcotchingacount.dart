import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class Buttomcountactcotch extends StatelessWidget {
  const Buttomcountactcotch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: "تواصل مع المدرب",
          onPressed: () {},
        ),
      ],
    );
  }
}
