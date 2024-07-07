import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildbuttom.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';

class infoorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        children: [
          buildRow("3 منتجات", "عدد المنتجات", FontWeight.w500, Colors.black,
              const Color(0xFF545454)),
          const SizedBox(
            height: 16,
          ),
          buildRow("599\$", "سعر المنتجات", FontWeight.w500, Colors.black,
              const Color(0xFF545454)),
          const SizedBox(
            height: 16,
          ),
          buildRow("11\$", "خدمة توصيل", FontWeight.w500, Colors.black,
              const Color(0xFF545454)),
          const SizedBox(
            height: 16,
          ),
          buildRow(
            "11\$",
            "القيمة المضافة",
            FontWeight.w500,
            Colors.black,
            const Color(0xFF545454),
          ),
          const SizedBox(
            height: 16,
          ),
          buildRow(
            "-20\$",
            "خصم الكوبون",
            FontWeight.w500,
            Colors.black,
            const Color(0xFF545454),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1.5,
            height: 30,
          ),
          buildRow(
            "610\$",
            "السعر النهائي",
            FontWeight.w600,
            const Color(0xFF00070D),
            Colors.black,
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: buildButton(
                    "إتمام الدفع", Colors.white, const Color(0xFFF78E32)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: buildButton(
                    "إلغاء", const Color(0xFFE50000), Colors.transparent),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
