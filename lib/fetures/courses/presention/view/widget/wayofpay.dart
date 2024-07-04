import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/bodybuttomsheetway.dart';

class Wayofpay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: BodyBottomSheetOfWay(),
      ),
    );
  }
}
