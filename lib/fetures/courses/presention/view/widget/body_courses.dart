import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/foter.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/grid_view.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/head.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyCourses extends StatelessWidget {
  final CourseseEntity courseseEntity;
  final UserEntity userEntitymodel;
  const BodyCourses(
      {super.key, required this.courseseEntity, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(33))),
              height: MediaQuery.of(context).size.height * .3,
              child: Header(
                video: courseseEntity.videoo,
                image: courseseEntity.imag,
              ),
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
                  CustomGridViewcourses(
                    courseseEntity: courseseEntity,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 030),
              child: GestureDetector(
                onTap: () => print(courseseEntity.otherimg[0]),
                child: Text(
                  "صور إضافية (${courseseEntity.otherimg.length})",
                  style: AppStyles.styleMedium18(context).copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: show(
                hotelEntity: courseseEntity.otherimg,
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
                  userEntitymodel: userEntitymodel,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
