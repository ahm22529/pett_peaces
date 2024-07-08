import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class buttom extends StatelessWidget {
  const buttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Custombuttom(titel: "تاكيد", onPressed: () {})],
    );
  }
}
