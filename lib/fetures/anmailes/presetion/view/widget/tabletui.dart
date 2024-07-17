import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';

class Tabletui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 450 / 209 // نسبة العرض إلى ا,لارتفاع
                    ),
                itemBuilder: (context, index) => iteamlistviewami(
                      widget: buttomanmandmating(
                        text: 'تعديل البيانات',
                        image: "Asset/image/edit-rectangle.png",
                        color: Color(0xff9C4900),
                        onTap: () {},
                      ),
                    )),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Myaccount())),
            child: buttomanmandmating(
              color: Colors.orange,
              text: 'إضافة حيوان جديد',
              image: 'Asset/image/jjjdjd.png',
              onTap: () {},
            ),
          ),
        )
      ],
    );
  }
}
