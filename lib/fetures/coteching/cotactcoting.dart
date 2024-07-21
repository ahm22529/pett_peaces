import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/coteching/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';

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
