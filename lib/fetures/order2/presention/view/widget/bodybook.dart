import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/buttomshowdetails.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/header.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/infoandheader.dart';

class BodyBookting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: headerBookting(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: iteambooktin(),
            ),
          ))
        ],
      ),
    );
  }
}

class iteambooktin extends StatelessWidget {
  const iteambooktin({
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
            const headerordersection(),
            SizedBox(
              height: 20,
            ),
            infoorder(),
            buttomshowdetails()
          ],
        ),
      ),
    );
  }
}
