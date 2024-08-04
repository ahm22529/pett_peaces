import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/courses/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/core/paymentservices/presention/manager/cubit/checkout_cubit.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/body_courses.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Coursesiteam extends StatefulWidget {
  final CourseseEntity courseseEntity;
  final UserEntity userEntitymodel;
  const Coursesiteam(
      {super.key, required this.courseseEntity, required this.userEntitymodel});

  @override
  State<Coursesiteam> createState() => _CoursesiteamState();
}

class _CoursesiteamState extends State<Coursesiteam> {
  CourseRepo courseRepo = CorseRepoImp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyCourses(
        courseseEntity: widget.courseseEntity,
        userEntitymodel: widget.userEntitymodel,
      ),
    );
  }
}
