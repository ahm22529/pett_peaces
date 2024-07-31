import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/view/widget/iteam_choose_services.dart';

class ChooseServices extends StatelessWidget {
  const ChooseServices({
    super.key,
    required this.services,
  });

  final List services;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(services.length, (index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5),
          child: ItemChooseService(
            titel: '',
          ),
        );
      }),
    );
  }
}
