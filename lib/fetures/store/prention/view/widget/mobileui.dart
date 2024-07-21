import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/gridview.dart';

class Mobileui extends StatelessWidget {
  final List<ProducEntity> pro;

  const Mobileui({super.key, required this.pro});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: CustomGridViewstore(),
    );
  }
}
