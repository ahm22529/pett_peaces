import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/courses.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infocourses.dart';

class listviewCourses extends StatelessWidget {
  const listviewCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => coursesiteam())),
                      child: Courses()),
                )));
  }
}
