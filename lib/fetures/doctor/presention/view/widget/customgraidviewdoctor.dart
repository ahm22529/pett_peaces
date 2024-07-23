import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor_entity.dart';

import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteamgridview.dart';

import 'package:pett_peaces/fetures/infodoctor/presention/view/infodoctor.dart';

class CustomGridViewDoctor extends StatelessWidget {
  const CustomGridViewDoctor({
    super.key,
    required this.doctorEntity,
    required this.scrollController,
  });
  final DoctorEntity doctorEntity;
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      itemCount: doctorEntity.coatch.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          childAspectRatio: 167 / 188),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {
              log(MediaQuery.of(context).size.width.toString());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => IformationDoctore(
                            coatch: doctorEntity.coatch[index],
                          )));
            },
            child: IteamGridViewDoctor(
              coatch: doctorEntity.coatch[index],
            ));
      },
    );
  }
}
