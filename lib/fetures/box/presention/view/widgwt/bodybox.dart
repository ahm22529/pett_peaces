import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/box/data/infodetailesModel.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/coboniteam.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/detailesorder.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/listtitelorder.dart';

class Bodybox extends StatelessWidget {
  List<Detailsmodel> lis = [
    Detailsmodel(
      color1: Color(0xff00070D),
      text1: "3 منتجات",
      text2: "عدد المنتجات",
      color2: Color(0xff545454),
      fontWeight: FontWeight.w500,
    ),
    Detailsmodel(
      color1: Color(0xff00070D),
      text1: "11\$",
      text2: "خدمة توصيل",
      color2: Color(0xff545454),
      fontWeight: FontWeight.w500,
    ),
    Detailsmodel(
      color1: Color(0xff00070D),
      text1: "599\$",
      text2: "سعر المنتجات",
      color2: Color(0xff545454),
      fontWeight: FontWeight.w500,
    ),
    Detailsmodel(
      color1: Color(0xff00070D),
      text1: "3 منتجات",
      text2: "عدد المنتجات",
      color2: Color(0xff545454),
      fontWeight: FontWeight.w500,
    ),
    Detailsmodel(
      text1: "610\$",
      text2: "السعر النهائي",
      color1: Color(0xff00070D),
      color2: Colors.black,
      fontWeight: FontWeight.w600,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 73,
              ),
              customAppbar(
                name: 'السله',
              ),
              listiteamorder(),
              Divider(
                height: 48,
                color: Color(0xffD9D9D980).withOpacity(.5),
              ),
              detailesorder(lis: lis),
              Row(
                children: [Custombuttom(titel: "إدفع", onPressed: () {})],
              )
            ],
          ),
        ),
      ),
    );
  }
}
