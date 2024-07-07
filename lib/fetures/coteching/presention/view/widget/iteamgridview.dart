import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/doctorstatus.dart';

class CustomgridviewDoctoriteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "Asset/image/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background-removebg-preview 1.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        const doctorestatus(),
      ],
    );
  }
}
