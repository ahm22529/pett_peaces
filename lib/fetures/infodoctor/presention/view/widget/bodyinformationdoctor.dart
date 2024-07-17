import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/googelmaps.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/informationcontact.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/summerydoctor.dart';

import '../../../../../core/utiles/widget/customappbar.dart';

class BodyInformationDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
              child: customAppbar(
            name: 'نفاصيل الطبيب',
          )),
          const SizedBox(
            height: 28,
          ),
          SummaryDoctor(),
          const SizedBox(
            height: 24,
          ),
          const informationcontact(),
          const SizedBox(
            height: 26,
          ),
          const googelmapsContiner()
        ],
      ),
    );
  }
}
