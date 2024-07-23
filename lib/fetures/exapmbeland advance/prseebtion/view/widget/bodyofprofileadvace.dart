import 'package:flutter/cupertino.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/continertwo.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/imagecontiner.dart';

class BodyProfileAdvance extends StatelessWidget {
  final ExambelEnitydetails examel;

  const BodyProfileAdvance({super.key, required this.examel});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // ال,خلفية العلوية مع الصورة
        imageconter(
          examel: examel,
        ),
        // الص,ندوق الأبيض الرئيسي
        informationcontiner(
          examel: examel,
        ),
        Positioned(
            right: 5,
            top: MediaQuery.of(context).size.height * .03,
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset("Asset/image/Back.png"))),
        Positioned(
            left: 5,
            top: MediaQuery.of(context).size.height * .26,
            child: Image.asset("Asset/image/pawprint 8.png"))
      ],
    );
  }
}
