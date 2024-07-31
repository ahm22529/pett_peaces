import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grid_view_home.dart';

class gridviewservices extends StatelessWidget {
  const gridviewservices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: const CustomGridViewHome());
  }
}
