import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/aboutus/data/model/informationcontantinfo.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/widget/informationcontact.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/widget/socialiconrow.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/informationcontact.dart';

class Bodyaboutus extends StatefulWidget {
  @override
  State<Bodyaboutus> createState() => _BodyaboutusState();
}

class _BodyaboutusState extends State<Bodyaboutus> {
  List<InformationContactInfo> lis = [
    InformationContactInfo(
        img: 'Asset/image/location.png', title: 'Street: Box No. 81747'),
    InformationContactInfo(
        img: 'Asset/image/location.png', title: 'Street: Box No. 81747'),
    InformationContactInfo(
        img: 'Asset/image/location.png', title: 'Street: Box No. 81747')
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Text(
            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد هذا النص هو مثال لنص ",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 36),
          informationcontactff(lis: lis),
          SizedBox(
            height: 38,
          ),
          SocialIconsRow(),
        ],
      ),
    );
  }
}
