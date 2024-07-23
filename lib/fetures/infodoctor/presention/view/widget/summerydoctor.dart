import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/doctorimage.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/nameddocotorecontact.dart';

class SummaryDoctor extends StatelessWidget {
  final DoctorEntitydetails coatch;

  const SummaryDoctor({super.key, required this.coatch});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        docotorimage(
          coatch: coatch,
        ),
        SizedBox(
          width: 16,
        ),
        namedoctoreandcontact(
          coatch: coatch,
        )
      ],
    );
  }
}
