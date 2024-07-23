import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/infodoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteamgridview.dart';

class BodyContinerDoctor extends StatelessWidget {
  const BodyContinerDoctor({
    super.key,
    required this.coatch,
  });
  final DoctorEntitydetails coatch;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          coatch.imagee,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
            left: 10,
            bottom: 40,
            child: Image.asset("Asset/image/Frame 1000004215.png")),
        Positioned(
          bottom: 0,
          child: InfoDoctore(
            coatch: coatch,
          ),
        ),
      ],
    );
  }
}
