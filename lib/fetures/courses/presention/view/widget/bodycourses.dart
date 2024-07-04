import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/foter.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/gridview.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/head.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';

class BodyCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: header(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, bottom: 8),
                    child: Text(
                      "كورس تعليم الحيوانات",
                      style: AppStyles.styleMedium18(context)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const location(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس \nالمساحة، لقد تم توليد هذا النص من مولد النص العربى، \nثل هذا النص أو العديد من النصوص الأخرىهذا النص هو\n",
                    style: AppStyles.styleRegular14(context).copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const CustomGridViewcourses(),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 030),
              child: Text(
                "صور إضافية (24)",
                style: AppStyles.styleMedium18(context)
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: show(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black12, width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: foter(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
