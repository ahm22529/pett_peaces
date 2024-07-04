import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/buttomshett.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class Titelappbar extends StatelessWidget {
  const Titelappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: continertextfiled(),
        ),
        IconButton(
          icon: Image.asset('Asset/image/filter.png'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (builder) => Custommodelshhet(),
            );
          },
        ),
      ],
    );
  }
}
