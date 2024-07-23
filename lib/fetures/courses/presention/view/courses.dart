import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/bodycourses.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';

class coursesiteam extends StatelessWidget {
  final CourseseEntity courseseEntity;

  const coursesiteam({super.key, required this.courseseEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyCourses(
        courseseEntity: courseseEntity,
      ),
    );
  }
}
