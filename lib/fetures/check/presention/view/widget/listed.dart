import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/check/data/model/iteammodel.dart';

import 'package:pett_peaces/fetures/check/presention/view/widget/iteamchexk.dart';

class ListIt extends StatefulWidget {
  const ListIt({super.key});

  @override
  State<ListIt> createState() => _ListIteamState();
}

class _ListIteamState extends State<ListIt> {
  List iteam = [
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildItemsWithDividers(),
    );
  }

  List<Widget> _buildItemsWithDividers() {
    List<Widget> itemsWithDividers = [];
    for (int i = 0; i < iteam.length; i++) {
      itemsWithDividers.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: iteamcheck(
          iteam: iteam[i],
        ),
      ));
      if (i < iteam.length) {
        itemsWithDividers.add(const Divider(
          height: 25,
        ));
      }
    }
    return itemsWithDividers;
  }
}
