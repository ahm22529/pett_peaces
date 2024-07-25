import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/iteamchooseservices.dart';

class ChooseServices extends StatelessWidget {
  const ChooseServices({
    Key? key,
    required this.services,
  }) : super(key: key);

  final List services;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(services.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.5),
          child: ItemChooseService(
            titel: '',
          ),
        );
      }),
    );
  }
}
