import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/coteching/cotactcoting.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/iteamgridview.dart';

class gridviewdoctopr extends StatelessWidget {
  const gridviewdoctopr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            childAspectRatio: 167 / 188),
        itemBuilder: (context, idex) => GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (builder) => Cotactcoting())),
            child: CustomgridviewDoctoriteam()));
  }
}
