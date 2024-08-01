import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/bodycontiner.dart';

class Cotactcoting extends StatelessWidget {
  const Cotactcoting({super.key, required this.cotachEntity});
  final CotachEntity cotachEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyCotactcoting(
        cotachEntity: cotachEntity,
      ),
    );
  }
}
