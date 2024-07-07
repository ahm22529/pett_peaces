import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/check/presention/view/check.dart';
import 'package:pett_peaces/fetures/check/presention/view/widget/iteamchexk.dart';

List<Widget> buildItemsWithDividers(List iteam) {
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
