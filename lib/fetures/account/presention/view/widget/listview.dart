import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/aboutus.dart';
import 'package:pett_peaces/fetures/account/data/model/modelaction.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/headerandspace.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/my_anmiles.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/changelang.dart';
import 'package:pett_peaces/fetures/changepassword/preention/view/changepassword.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/contactwithpices.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/login.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/mating.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/mydata.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/booking_hotel.dart';
import 'package:pett_peaces/fetures/order2/presention/view/bookting.dart';
import 'package:pett_peaces/fetures/poilce/presention/view/poilcy.dart';
import 'package:pett_peaces/fetures/resonbuy/presention/view/resonbuy.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/subscribtion/presention/view/subsurbtion.dart';

import '../../../../deletaccount/showdilog.dart';

class Iteamconter extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  const Iteamconter({Key? key, required this.userEntitymodel})
      : super(key: key);

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
  late List<Widget> nav;
  @override
  void initState() {
    // TODO: implement initState

    nav = [
      Myanmiles(userEntitymodel: widget.userEntitymodel),
      Mating(),
      Bookting(
        userEntitymodel: UserEntitymodel(
            email: "",
            massage: '',
            id: '',
            type: '',
            name: '',
            phone: '',
            image: '',
            token: '',
            is_plan_subscribe: false,
            email_verified_at: false),
      ),
      Order(
        userEntitymodel: widget.userEntitymodel,
      ),
      Subsurbtion(),
      Changepassword(),
      Changelang(),
      policy(),
      Aboutus(),
      resonbay(),
      Contactwithpices(),
      LoginView(),
    ];
  }

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
                if (index == 9) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(); // افترض أن CustomDialog هو عنصر تفاعلي يظهر كـ AlertDialog
                    },
                  );
                } else if (index < nav.length - 1) {
                  // -1 لأنه تحقق بالفعل من index < nav.length في الفقرة السابقة
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nav[index]),
                  );
                } else if (index == nav.length - 1) {
                  // عندما يكون index آخر عنصر في nav
                  Navigator.pushReplacement(
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
