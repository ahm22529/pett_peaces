import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/customgraidviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';

class BodyDocoter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 73),
      child: Column(
        children: [
         customAppbar(name: "الاطباء"),
          SizedBox(
            height: 24,
          ),
          TitelappbarDoctore(
            name: 'ابحث عن الأطباء ',
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: CustomGridViewDoctor())
        ],
      ),
    );
  }
}
