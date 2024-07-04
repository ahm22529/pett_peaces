import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/classifybuttomsheet.dart';

class ClassifyIteam extends StatelessWidget {
  const ClassifyIteam({
    super.key,
    required this.lis,
  });

  final List lis;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: lis.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Classify(
            text: item,
          ),
        );
      }).toList(),
    );
  }
}
