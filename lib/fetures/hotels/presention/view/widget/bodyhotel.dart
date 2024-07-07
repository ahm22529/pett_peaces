import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/headerhotel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/tabbar.dart';

class BodyHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Headerhotel(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tabbarviewincolum(),
                  Text(
                    "فندق ستار بلازا",
                    style: AppStyles.stylesemi20(context)
                        .copyWith(color: Colors.black),
                  ),
                  const location(),
                  const SizedBox(height: 500, child: ThreeTabBarExample()),
                  continerbuttom()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class tabbarviewincolum extends StatelessWidget {
  const tabbarviewincolum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}
