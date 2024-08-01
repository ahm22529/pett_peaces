import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/courses.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/info_courses.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ListviewCourses extends StatelessWidget {
  const ListviewCourses({
    super.key,
    required this.cours,
    required this.userEntitymodel,
  });
  final List<CourseseEntity> cours;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .19,
        child: ListView.builder(
            itemCount: cours.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Coursesiteam(
                                    courseseEntity: CourseseEntity(
                                        nameof: cours[index].nameof,
                                        day: cours[index].day,
                                        idd: cours[index].idd,
                                        isactive: false,
                                        type: cours[index].type,
                                        priceof: cours[index].priceof,
                                        imag: cours[index].imag,
                                        otherimg: cours[index].otherimg,
                                        startdate: cours[index].startdate,
                                        videoo: cours[index].videoo,
                                        locatione: cours[index].locatione,
                                        des: cours[index].des),
                                    userEntitymodel: userEntitymodel,
                                  ))),
                      child: Courses(
                        courseseEntity: cours[index],
                      )),
                )));
  }
}
