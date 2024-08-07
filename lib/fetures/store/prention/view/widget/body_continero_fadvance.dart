import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/catogry_advance_butomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_buttom_sheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/price_advance_buttomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/progress_indecore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/ringe_prices.dart';

class Bodycontinerofbuttomsheet extends StatelessWidget {
  const Bodycontinerofbuttomsheet({
    super.key,
    required this.lis,
  });

  final List<DepartmentEntity> lis;

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
        Catogry(
          titel1: 'الفئة',
          tiele2: 'عرض الكل ',
          depart: lis,
        ),
        Divider(
          height: 24,
          color: const Color(0xff21235F).withOpacity(.25),
        ),
        Catogry(
          titel1: "التصنيف الفرعي",
          tiele2: "عرض الكل",
          depart: lis,
        ),
        const SizedBox(
          height: 24,
        ),
        prices(lis: lis),
        Divider(
          height: 24,
          color: const Color(0xff21235F).withOpacity(.25),
        ),
        const Ringeprices(),
        ProgressSlider(),
        Divider(
          height: 24,
          color: const Color(0xff21235F).withOpacity(.25),
        ),
        Row(
          children: [Custombuttom(titel: "تطبيق", onPressed: () {})],
        )
      ],
    );
  }
}
