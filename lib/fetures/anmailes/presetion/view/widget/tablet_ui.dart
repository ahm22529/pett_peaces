import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam_listview.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Tabletui extends StatelessWidget {
  final UserEntitymodel userEntitymodel;

  const Tabletui({super.key, required this.userEntitymodel});
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 450 / 209 // نسبة العرض إلى ا,لارتفاع
                    ),
                itemBuilder: (context, index) => Iteamlistviewami(
                      widget: Buttomanmandmating(
                        text: 'تعديل البيانات',
                        image: "Asset/image/edit-rectangle.png",
                        color: Color(0xff9C4900),
                        onTap: () {},
                      ),
                      animel: AnmilesEntity(
                          namee: "namee",
                          otherimage: [],
                          typee: "",
                          agee: 5,
                          des: "des",
                          gendere: "",
                          idd: 0,
                          imagee: "",
                          predec: ""),
                    )),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => Myaccount(
                          anmilesEntity: AnmilesEntity(
                              namee: "namee",
                              otherimage: [],
                              typee: "typee",
                              agee: 5,
                              des: "des",
                              gendere: "gendere",
                              idd: 1,
                              imagee: "imagee",
                              predec: "predec"),
                          userEntitymodel: userEntitymodel,
                        ))),
            child: Buttomanmandmating(
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
