import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';

import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/bodyinformationdoctor.dart';

class IformationDoctore extends StatelessWidget {
  final DoctorEntitydetails coatch;

  const IformationDoctore({super.key, required this.coatch});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyInformationDoctor(
        coatch: coatch,
      ),
    );
  }
}
