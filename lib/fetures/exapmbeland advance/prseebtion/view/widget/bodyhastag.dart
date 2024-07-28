import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/examel_entity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/listviewadvance.dart';

class BodyHatage extends StatelessWidget {
  const BodyHatage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(children: [
            SizedBox(
              height: 24,
            ),
          ]),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
      
      ],
    );
  }
}
