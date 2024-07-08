import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/header.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/iteamborder.dart';

class bodybook extends StatelessWidget {
  const bodybook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          BodyOrder(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: iteamorder(),
                      )))
        ],
      ),
    );
  }
}
