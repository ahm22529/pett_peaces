
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/iteamstore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

class CustomGridViewstore extends StatelessWidget {
  const CustomGridViewstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: MediaQuery.of(context).size.width >= 410 ? 10 : 0,
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width <= 600
              ? .85  :MediaQuery.of(context).size.width >= 400
              ? 2.1
              : 2.5// نسبة العرض إلى الارتفاع
          ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(onTap: () {
          log(MediaQuery.of(context).size.width.toString());
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => DetailesView()));
        }, child: IteamStore(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => DetailesView()));
          },
        ));
      },
    );
  }
}