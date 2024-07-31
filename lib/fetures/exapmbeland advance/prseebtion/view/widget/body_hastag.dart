import 'package:flutter/material.dart';

class BodyHatage extends StatelessWidget {
  const BodyHatage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
