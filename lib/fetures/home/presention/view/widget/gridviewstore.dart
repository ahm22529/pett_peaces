import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/courses.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infocourses.dart';

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
                                        nameof: "nameof",
                                        day: 1,
                                        idd: 1,
                                        isactive: false,
                                        type: "type",
                                        priceof: "priceof",
                                        imag: "imag",
                                        otherimg: [],
                                        startdate: "startdate",
                                        videoo: "videoo",
                                        locatione: '',
                                        des: ''),
                                  ))),
                      child: Courses(
                        courseseEntity: cours[index],
                      )),
                )));
  }
}
