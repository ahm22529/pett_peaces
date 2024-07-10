import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/aboutus/data/model/informationcontantinfo.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/widget/locationrow.dart';

class informationcontactff extends StatelessWidget {
  const informationcontactff({
    super.key,
    required this.lis,
  });

  final List<InformationContactInfo> lis;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: lis.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: LocationRow(
            text: item.title,
            img: item.img,
          ),
        );
      }).toList(),
    );
  }
}
