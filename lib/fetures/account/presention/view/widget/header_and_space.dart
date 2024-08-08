import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/account/data/model/modelaction.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/iteam_acount.dart';

class SpaceadHeader extends StatelessWidget {
  const SpaceadHeader({
    super.key,
    required this.modelActino,
  });
  final ModelActino modelActino;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Iteamaccount(
          imaeg: modelActino.image,
          text: modelActino.text,
        ),
      ],
    );
  }
}
