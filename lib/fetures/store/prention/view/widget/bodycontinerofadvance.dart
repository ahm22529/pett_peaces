import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttonofadvancesheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/catogryadvancebutomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/headerbuttomshhet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/priceadvancebuttomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/progressindecore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/ringeprices.dart';

class bodycontinerofbuttomsheet extends StatelessWidget {
  const bodycontinerofbuttomsheet({
    super.key,
    required this.lis,
  });

  final List lis;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Headerbottomsheet(
          titel11: "التصنيف",
          titel2: 'إعادة ضبط',
        ),
        const SizedBox(
          height: 36,
        ),
        const Catogry(
          titel1: 'الفئة',
          tiele2: 'طعام',
        ),
        Divider(
          height: 24,
          color: const Color(0xff21235F).withOpacity(.25),
        ),
        const Catogry(titel1: "التصنيف الفرعي", tiele2: "عرض الكل"),
        const SizedBox(
          height: 24,
        ),
        prices(lis: lis),
        Divider(
          height: 24,
          color: const Color(0xff21235F).withOpacity(.25),
        ),
        const ringeprices(),
        ProgressSlider(),
        Divider(
          height: 24,
          color: const Color(0xff21235F).withOpacity(.25),
        ),
        const buttomadvancedsheet()
      ],
    );
  }
}
