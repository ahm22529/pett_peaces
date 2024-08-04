import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/core/utiles/widget/appbar_serach.dart';
import 'package:pett_peaces/fetures/courses/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/courses/presention/manger/fetachcourses/coursecubit_cubit.dart';

import 'package:pett_peaces/fetures/courses/presention/view/widget/body_course_list.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Courselist extends StatefulWidget {
  const Courselist({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;
  @override
  State<Courselist> createState() => _CourselistState();
}

class _CourselistState extends State<Courselist> {
  CourseRepo courseRepo = CorseRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursecubitCubit(courseRepo),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Appbarsearch(
              name: "ابحث   عن الكورسات",
              fetchPredictions: () {},
              textEditingController: TextEditingController()),
        ),
        body: BodyListCourses(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
