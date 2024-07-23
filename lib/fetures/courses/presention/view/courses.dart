import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/courses/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/courses/presention/manger.dart/cubit/checkout_cubit.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/bodycourses.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';

class coursesiteam extends StatefulWidget {
  final CourseseEntity courseseEntity;

  const coursesiteam({super.key, required this.courseseEntity});

  @override
  State<coursesiteam> createState() => _coursesiteamState();
}

class _coursesiteamState extends State<coursesiteam> {
  CourseRepo courseRepo = CorseRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutCubit(courseRepo),
      child: Scaffold(
        body: BodyCourses(
          courseseEntity: widget.courseseEntity,
        ),
      ),
    );
  }
}
