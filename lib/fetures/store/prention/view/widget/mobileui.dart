import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/gridview.dart';

class Mobileui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
      child: CustomGridViewstore(),
    );
  }
}
