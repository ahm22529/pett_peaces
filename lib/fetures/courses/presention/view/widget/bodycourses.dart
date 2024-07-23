import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/foter.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/gridview.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/head.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';

class BodyCourses extends StatelessWidget {
  final CourseseEntity courseseEntity;

  const BodyCourses({super.key, required this.courseseEntity});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: header(
              video: courseseEntity.videoo,
            ),
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
                      courseseEntity.nameof,
                      style: AppStyles.styleMedium18(context)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  location(
                    adderss: courseseEntity.locatione ?? "",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  HtmlWidget(courseseEntity.des ?? ""),
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
              child: show(
                hotelEntity: [],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black12, width: 1),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: foter(
                  courseseEntity: courseseEntity,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
