import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class Bottomdetails extends StatelessWidget {
  const Bottomdetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Custombuttom(titel: "تواصل الآن", onPressed: () {})],
    );
  }
}
