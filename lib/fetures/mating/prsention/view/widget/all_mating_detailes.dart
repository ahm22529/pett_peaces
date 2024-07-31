import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/buttom_detailes.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/body_mating_details.dart';

class AllMatingDetailesview extends StatelessWidget {
  final AllMatingEntity anmiles;

  const AllMatingDetailesview({super.key, required this.anmiles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyMatingDetails(
        selEntity: anmiles,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70, // يمكنك ضبط الارتفاع حسب الحاجة
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Bottomdetails(),
        ),
      ),
    );
  }
}
