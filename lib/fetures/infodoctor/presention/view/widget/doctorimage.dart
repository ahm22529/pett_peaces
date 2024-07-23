import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';

class docotorimage extends StatelessWidget {
  const docotorimage({
    super.key,
    required this.coatch,
  });
  final DoctorEntitydetails coatch;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .25,
        width: MediaQuery.of(context).size.height * .2,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "Asset/image/Frame 1000004256.png"), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Image.network(coatch.imagee));
  }
}
