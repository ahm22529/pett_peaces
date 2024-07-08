import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/account/data/model/modelaction.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/iteamacount.dart';

class spaceadHeader extends StatelessWidget {
  const spaceadHeader({
    super.key,
    required this.modelActino,
  });
  final ModelActino modelActino;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        iteamaccount(
          imaeg: modelActino.image,
          text: modelActino.text,
        ),
      ],
    );
  }
}
