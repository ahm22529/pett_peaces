import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/courses.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/info_courses.dart';

class listviewCourses extends StatelessWidget {
  const listviewCourses({
    super.key,
    required this.cours,
  });
  final List<CourseseEntity> cours;
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
                              builder: (builder) => coursesiteam(
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
                                  ))),
                      child: Courses(
                        courseseEntity: cours[index],
                      )),
                )));
  }
}
