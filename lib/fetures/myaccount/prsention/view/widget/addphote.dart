import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class addphot extends StatelessWidget {
  const addphot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: DottedBorder(
        dashPattern: [8, 4],
        color: Color(0xffD2D5DA),
        strokeWidth: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
              horizontal: 27.0,
              vertical: 50), // تعديل المسافة الداخلية حسب الحاجة
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "Asset/image/System Icons.png"), // تعديل ارتفاع الصورة حسب الحاجة
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'أسقط هنا للإرفاق أو ',
                        style: AppStyles.styleRegular14(context).copyWith(
                            color: Color(0xFF4B556B),
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: ' التحميل ',
                        style: AppStyles.styleRegular14(context).copyWith(
                            color: Color(0xFF0B57CF),
                            fontWeight: FontWeight.w500) // اللون الأزرق
                        ),
                  ],
                ),
              ),
              Text(
                "أقصي حجم: 5GB",
                style: AppStyles.styleRegular14(context).copyWith(
                    color: Color(0xFF4B556B), fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
