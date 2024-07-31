import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/detailsorder/presention/view/widget/headerofcontinerandinfomation.dart';

class iteamorderdetails extends StatelessWidget {
  const iteamorderdetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: Column(
          children: [
            headerofcontiner(),
            SizedBox(
              height: 20,
            ),
            informationorderofcontiner(),
          ],
        ),
      ),
    );
  }
}
