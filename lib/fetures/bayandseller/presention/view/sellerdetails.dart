import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/bodysellerdetails.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/buttomdetailes.dart';

class Sellerdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodysellerandbuyerdetails(),
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
