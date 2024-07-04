import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customlistview.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/gridview.dart';

class BodyStore extends StatelessWidget {
  const BodyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: Customlistview()),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, top: 20),
              child: CustomGridViewstore(),
            ))
      ],
    );
  }
}
