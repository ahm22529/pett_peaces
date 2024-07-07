import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class TitelappbarDoctore extends StatelessWidget {
  const TitelappbarDoctore({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: continertextfiled(
            name: name,
          ),
        ),
      ],
    );
  }
}
