import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/sel_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/bodysellerdetails.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/buttomdetailes.dart';

class Sellerdetails extends StatelessWidget {
  final SelEntity anmiles;

  const Sellerdetails({super.key, required this.anmiles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodysellerandbuyerdetails(
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
