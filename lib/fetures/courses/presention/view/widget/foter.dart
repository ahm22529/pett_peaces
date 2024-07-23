import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/buttomcourses.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/priceanddiscount.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';

class foter extends StatelessWidget {
  const foter({
    super.key,
    required this.courseseEntity,
  });
  final CourseseEntity courseseEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttomcours(
          titel: 'طلب إشتراك',
          onPressed: () {},
        ),
        const SizedBox(
          width: 48,
        ),
        const SizedBox(
          width: 8,
        ),
        priceanddiscount(
          courseseEntity: courseseEntity,
        ),
      ],
    );
  }
}
