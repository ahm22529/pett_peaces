import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/customgraidviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';

class BodyDocoter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 73),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("Asset/image/Back.png"),
            title: Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                "  الأطباء",
                style: AppStyles.stylesemi20(context)
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
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
