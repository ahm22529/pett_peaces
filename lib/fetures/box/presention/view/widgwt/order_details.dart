import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/cobon_iteam.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/custom_buttom_box.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class orderdetails extends StatelessWidget {
  const orderdetails({
    Key? key,
    required this.userEntitymodel,
  }) : super(key: key);
  final UserEntitymodel userEntitymodel;
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
            offset: const Offset(0, 2), // تعيين موضع الظل بالنسبة للعنصر
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            cobeniteam(
              userEntitymodel: userEntitymodel,
            ),
            const SizedBox(
              height: 16,
            ),
            buildRow("3 منتجات", "عدد المنتجات", FontWeight.w400,
                const Color(0xff545454), const Color(0xff00070D)),
            buildRow("255", "سعر المنتجات", FontWeight.w400,
                const Color(0xff545454), const Color(0xff00070D)),
            buildRow("110\$", "القيمة المضافة", FontWeight.w400,
                const Color(0xff545454), const Color(0xff00070D)),
            buildRow("50\$", "خدمة توصيل", FontWeight.w400,
                const Color(0xff545454), const Color(0xff00070D)),
            buildRow("20%", "خصم الكوبون", FontWeight.w400,
                const Color(0xff545454), const Color(0xff00070D)),
            const Divider(
              height: 32,
            ),
            buildRow("610", "السعر النهائي", FontWeight.w400,
                const Color(0xff545454), const Color(0xff00070D)),
            const SizedBox(
              height: 16,
            ),
            BotttomPay(
              userEntitymodel: userEntitymodel,
            )
          ],
        ),
      ),
    );
  }
}
