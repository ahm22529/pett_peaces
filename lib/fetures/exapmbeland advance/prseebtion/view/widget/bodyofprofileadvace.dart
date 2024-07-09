import 'package:flutter/cupertino.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/continertwo.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/imagecontiner.dart';

class BodyProfileAdvance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // ال,خلفية العلوية مع الصورة
        imageconter(),
        // الص,ندوق الأبيض الرئيسي
        informationcontiner(),
        Positioned(
            right: 5,
            top: MediaQuery.of(context).size.height * .03,
            child: Image.asset("Asset/image/Back.png")),
        Positioned(
            left: 5,
            top: MediaQuery.of(context).size.height * .23,
            child: Image.asset("Asset/image/pawprint 8.png"))
      ],
    );
  }
}
