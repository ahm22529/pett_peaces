import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/doctor_image.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/named_docotore_contact.dart';

class SummaryDoctor extends StatelessWidget {
  final DoctorEntitydetails coatch;

  const SummaryDoctor({super.key, required this.coatch});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Docotorimage(
          coatch: coatch,
        ),
        // igno,re: prefer_const_constructors
        const SizedBox(
          width: 16,
        ),
        Namedoctoreandcontact(
          coatch: coatch,
        )
      ],
    );
  }
}
