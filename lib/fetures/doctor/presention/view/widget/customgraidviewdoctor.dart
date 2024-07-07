import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteamgridview.dart';

import 'package:pett_peaces/fetures/infodoctor/presention/view/infodoctor.dart';

class CustomGridViewDoctor extends StatelessWidget {
  const CustomGridViewDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          childAspectRatio: 167 / 188),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {
              log(MediaQuery.of(context).size.width.toString());
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => IformationDoctore()));
            },
            child: IteamGridViewDoctor());
      },
    );
  }
}
