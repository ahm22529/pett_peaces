import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/contact.dart';

class namedoctoreandcontact extends StatelessWidget {
  const namedoctoreandcontact({
    super.key,
    required this.coatch,
  });
  final DoctorEntitydetails coatch;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          coatch.namee,
          style: AppStyles.styleMedium18(context).copyWith(color: Colors.black),
        ),
        Text(
          coatch.specfication,
          style: AppStyles.styleMedium12(context)
              .copyWith(color: const Color(0xff545454)),
        ),
        SizedBox(
          height: 50,
        ),
        contact()
      ],
    );
  }
}
