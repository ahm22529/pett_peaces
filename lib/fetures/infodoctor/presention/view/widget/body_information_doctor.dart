import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/information_contact.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/summery_doctor.dart';

import '../../../../../core/utiles/widget/customappbar.dart';

class BodyInformationDoctor extends StatelessWidget {
  final DoctorEntitydetails coatch;

  const BodyInformationDoctor({super.key, required this.coatch});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
              child: customAppbar(
            name: 'نفاصيل الطبيب',
          )),
          const SizedBox(
            height: 28,
          ),
          SummaryDoctor(
            coatch: coatch,
          ),
          const SizedBox(
            height: 24,
          ),
          informationcontact(
            coatch: coatch,
          ),
          const SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }
}
