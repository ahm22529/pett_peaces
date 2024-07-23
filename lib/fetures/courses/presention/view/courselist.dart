import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/courses/presention/manger.dart/fetachcourses/coursecubit_cubit.dart';
import 'package:pett_peaces/fetures/courses/presention/view/courses.dart';
import 'package:pett_peaces/fetures/home/data/model/homemodelresponse/course.dart';

import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infocourses.dart';

class Courselist extends StatefulWidget {
  const Courselist({super.key});

  @override
  State<Courselist> createState() => _CourselistState();
}

class _CourselistState extends State<Courselist> {
  CourseRepo courseRepo = CorseRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursecubitCubit(courseRepo),
      child: Scaffold(body: bodylistcourses()),
    );
  }
}

class bodylistcourses extends StatefulWidget {
  const bodylistcourses({
    super.key,
  });

  @override
  State<bodylistcourses> createState() => _bodylistcoursesState();
}

class _bodylistcoursesState extends State<bodylistcourses> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CoursecubitCubit>(context).getcourse(
        token:
            "            eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA",
        endpoint: "courses");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursecubitCubit, CoursecubitState>(
      builder: (context, state) {
        if (state is Coursecubitsucess) {
          return ListView.builder(
              itemCount: state.coursesEntityList.cou.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(state
                                    .coursesEntityList
                                    .cou[index]
                                    .imag // Provide a fallback image URL if `imag` is null
                                ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => coursesiteam(
                                          courseseEntity: state
                                              .coursesEntityList.cou[index],
                                        ))),
                            child: Couresesiteamlistviw(
                                courseseEntity:
                                    state.coursesEntityList.cou[index]))),
                  ));
        } else {
          return CircleAvatar();
        }
      },
    );
  }
}

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
