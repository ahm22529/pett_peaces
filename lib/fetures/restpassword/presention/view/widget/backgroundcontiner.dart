import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundrest.dart';

class backgroundrest extends StatelessWidget {
  const backgroundrest({
    super.key, required this.widget, required this.pos,
  });
  final Widget widget;
  final double pos;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(),
              ),
              backgoundcontiner(
                color: Colors.orange,
              ),
              backgoundcontiner(
                color: Colors.white,
              )
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              top:pos ,
              child: widget)
        ],
      ),
    );
  }
}
