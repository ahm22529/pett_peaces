import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infoanmiles.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/continertextfiledcontry.dart';

class Anmmalesmeacc extends StatelessWidget {
  const Anmmalesmeacc({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: iteamlistviewami(
                widget: buttomanmandmating(
                  text: 'تعديل البيانات',
                  image: "Asset/image/edit-rectangle.png",
                  color: Color(0xff9C4900),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Myaccount())),
                ),
              ),
            ));
  }
}
