import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/info_courses.dart';

class Couresesiteamlistviw extends StatelessWidget {
  const Couresesiteamlistviw({
    super.key,
    required this.courseseEntity,
  });
  final CourseseEntity courseseEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Column(
        children: [
          // العنصر الأول يأخذ العرض الكامل
          Container(
            width: double.infinity, // اجعل العرض يملأ الحاوية بالكامل
            color: const Color(0xff020202).withOpacity(.3),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
              child: Text(
                courseseEntity.nameof,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center, // لتوسيع النص لملء الـ Container
              ),
            ),
          ),
          const SizedBox(height: 80),
          // باقي العناصر تتوزع بشكل متساوي
          Row(
            children: [
              Expanded(
                flex: 5,
                child: infocourses(
                  Co: courseseEntity.type,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                flex: 1,
                child: infocourses(
                  Co: courseseEntity.day.toString(),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: infocourses(
                  Co: courseseEntity.priceof,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
