import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/my_anmiles.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmiles_home.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/header_section.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/home_view_body.dart';

class MyAnmilesLastAdd extends StatelessWidget {
  const MyAnmilesLastAdd({
    super.key,
    required this.widget,
    required this.anmiles,
  });

  final HomeViewBody widget;
  final AnmilesEntity? anmiles;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: anmiles != null,
      child: Column(
        children: [
          Headersection(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => Myanmiles(
                          userEntitymodel: widget.userEntitymodel,
                        ))),
            titel1: 'حيواناتي',
            titel2: 'عرض المزيد',
          ),
          const SizedBox(
            height: 20,
          ),
          Anmileshome(
            anmiles: anmiles,
            userEntitymodel: widget.userEntitymodel,
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
