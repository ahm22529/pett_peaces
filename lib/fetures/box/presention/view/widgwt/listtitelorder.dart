import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/iteambox.dart';
import 'package:pett_peaces/fetures/check/data/model/iteammodel.dart';

class listiteamorder extends StatefulWidget {
  const listiteamorder({Key? key});

  @override
  State<listiteamorder> createState() => _listiteamorderState();
}

class _listiteamorderState extends State<listiteamorder> {
  List iteam = [
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: iteam.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            IteamBox(),
            if (index < iteam.length - 1)
              Divider(
                height: 25,
              ),
          ],
        );
      },
    );
  }
}
