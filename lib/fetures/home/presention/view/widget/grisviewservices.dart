import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/gridviewhome.dart';

class gridviewservices extends StatelessWidget {
  const gridviewservices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: const CustomGridViewHome());
  }
}
