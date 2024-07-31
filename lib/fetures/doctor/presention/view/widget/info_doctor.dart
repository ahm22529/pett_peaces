import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';

class InfoDoctore extends StatelessWidget {
  const InfoDoctore({
    super.key,
    required this.coatch,
  });
  final DoctorEntitydetails coatch;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          color: Color(0xffF78E32).withOpacity(.15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              coatch.namee,
              style: AppStyles.styleRegular14(context)
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              coatch.specfication,
              style: AppStyles.styleMedium12(context).copyWith(
                  color: Color(0xff545454), fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
