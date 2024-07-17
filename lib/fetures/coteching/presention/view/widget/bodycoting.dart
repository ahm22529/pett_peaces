import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/gridviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';

class BodyCoating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          const customAppbar(
            name: 'المدربين',
          ),
          const SizedBox(
            height: 24,
          ),
          const TitelappbarDoctore(
            name: 'ابحث عن المدربين ',
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(
            child: const gridviewdoctopr(),
          ),
        ],
      ),
    );
  }
}
