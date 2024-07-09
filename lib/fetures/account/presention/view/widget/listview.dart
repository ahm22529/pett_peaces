import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/aboutus.dart';
import 'package:pett_peaces/fetures/account/data/model/modelaction.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/headerandspace.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/myanmiles.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/changelang.dart';
import 'package:pett_peaces/fetures/changepassword/preention/view/changepassword.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/contactwithpices.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/mating.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/mydata.dart';
import 'package:pett_peaces/fetures/order/presention/order.dart';
import 'package:pett_peaces/fetures/order2/presention/view/bookting.dart';
import 'package:pett_peaces/fetures/poilce/presention/view/poilcy.dart';
import 'package:pett_peaces/fetures/resonbuy/presention/view/resonbuy.dart';
import 'package:pett_peaces/fetures/subscribtion/presention/view/subsurbtion.dart';

class Iteamconter extends StatefulWidget {
  const Iteamconter({Key? key}) : super(key: key);

  @override
  State<Iteamconter> createState() => _IteamconterState();
}

class _IteamconterState extends State<Iteamconter> {
  List<ModelActino> lis = [
    ModelActino(image: "Asset/image/fffkkk.png", text: "حيواناتي"),
    ModelActino(image: "Asset/image/digital health.png", text: "التزاوج"),
    ModelActino(image: "Asset/image/package.png", text: "طلباتي"),
    ModelActino(image: "Asset/image/deposit.png", text: "حجوزاتي"),
    ModelActino(image: "Asset/image/ac.png", text: "الاشتراكات"),
    ModelActino(image: "Asset/image/lock 01.png", text: "تغير كلمة المرور"),
    ModelActino(image: "Asset/image/globe.png", text: "تغير اللغة"),
    ModelActino(image: "Asset/image/compass.png", text: "سياسة الخصوصية"),
    ModelActino(
        image: "Asset/image/information.png", text: "حول خدمات Petty Peace"),
    ModelActino(image: "Asset/image/user-remove 01.png", text: "حذف حسابي"),
    ModelActino(image: "Asset/image/id card.png", text: "تواصل معنا"),
    ModelActino(image: "Asset/image/login 01.png", text: "تسجيل خروج"),
  ];

  List<Widget> nav = [
    Myanmiles(),
    Mating(),
    Order(),
    Bookting(),
    Subsurbtion(),
    resonbay(),
    Changepassword(),
    Mydata(),
    Myaccount(),
    Changelang(),
    Contactwithpices(),
    policy(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: lis.asMap().entries.map((entry) {
            int index = entry.key;
            ModelActino modelAction = entry.value;

            return GestureDetector(
              onTap: () {
                if (index < nav.length) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nav[index]),
                  );
                }
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: spaceadHeader(modelActino: modelAction),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
