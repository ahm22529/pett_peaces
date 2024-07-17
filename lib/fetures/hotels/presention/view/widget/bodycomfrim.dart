import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/buttomcomfrim.dart';

import 'package:pett_peaces/fetures/hotels/presention/view/widget/checkchoose.dart';

import 'package:pett_peaces/fetures/hotels/presention/view/widget/dateofbook.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepicker.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/droptextfiled.dart';

class Bodycomfrimbook extends StatefulWidget {
  const Bodycomfrimbook({
    super.key,
  });

  @override
  State<Bodycomfrimbook> createState() => _BodycomfrimbookState();
}

class _BodycomfrimbookState extends State<Bodycomfrimbook> {
  List titel = ["رعاية طبية", "صالون", "استلام وتوصيل من المنزل", "التزاوج"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          const SizedBox(
            height: 73,
          ),
          const customAppbar(
            name: 'تاكيد الحجز',
          ),
          const SizedBox(
            height: 32,
          ),
          const dateofbook(),
          const SizedBox(
            height: 16,
          ),
          datepic(
            widget: DropdownField(
              options: [",ماريو", "ماريو"],
              controller: TextEditingController(),
            ),
            text: "اختر الحيوان",
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "الخدمات",
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          ...List.generate(
            titel.length,
            (index) => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: checkchoose(
                  titel: titel[index],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const datepic(
            widget: Textformfieldresoncon(
              maxline: 1,
              initialValue: '',
            ),
            text: "عدد أيام التزاوج",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            child: butomcomfrim(onPressed: () {}),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
