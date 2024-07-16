import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/coboniteam.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/custombuttombox.dart';

class orderdetails extends StatelessWidget {
  const orderdetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15), // لون الظل وشفافيته
            spreadRadius: 2, // نطاق التوزيع
            blurRadius: 4, // نطاق الضبابية
            offset: Offset(0, 2), // تعيين موضع الظل بالنسبة للعنصر
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            cobeniteam(),
            SizedBox(
              height: 16,
            ),
            buildRow("3 منتجات", "عدد المنتجات", FontWeight.w400,
                Color(0xff545454), Color(0xff00070D)),
            buildRow("255", "سعر المنتجات", FontWeight.w400, Color(0xff545454),
                Color(0xff00070D)),
            buildRow("110\$", "القيمة المضافة", FontWeight.w400,
                Color(0xff545454), Color(0xff00070D)),
            buildRow("50\$", "خدمة توصيل", FontWeight.w400, Color(0xff545454),
                Color(0xff00070D)),
            buildRow("20%", "خصم الكوبون", FontWeight.w400, Color(0xff545454),
                Color(0xff00070D)),
            Divider(
              height: 32,
            ),
            buildRow("610", "السعر النهائي", FontWeight.w400, Color(0xff545454),
                Color(0xff00070D)),
            SizedBox(
              height: 16,
            ),
            custombuttombox()
          ],
        ),
      ),
    );
  }
}
