import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/doctorstatus.dart';

class CustomgridviewDoctoriteam extends StatelessWidget {
  final CotachEntity cotachEntity;

  const CustomgridviewDoctoriteam({super.key, required this.cotachEntity});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          cotachEntity.imagee,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        doctorestatus(
          cotachEntity: cotachEntity,
        ),
      ],
    );
  }
}
