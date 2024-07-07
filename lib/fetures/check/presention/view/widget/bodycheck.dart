import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/check/presention/view/widget/iformationorder.dart';
import 'package:pett_peaces/fetures/check/presention/view/widget/listed.dart';

class Bodycheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset("Asset/image/Back.png"),
                    title: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        "إتمام عملية الدفع",
                        style: AppStyles.stylesemi20(context)
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  ListIt(),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: infoorder(),
        )
      ],
    );
  }
}
