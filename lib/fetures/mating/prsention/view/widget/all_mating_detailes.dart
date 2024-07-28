import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/sel_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/bodysellerdetails.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/buttomdetailes.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/body_all_mating_anmiles.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/body_mating_details.dart';

class AllMatingDetailesview extends StatelessWidget {
  final AllMatingEntity  anmiles;

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
          child: bottomdetails(),
        ),
      ),
    );
  }
}
