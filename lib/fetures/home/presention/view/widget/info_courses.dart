import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
class infocourses extends StatelessWidget {
  const infocourses({
    super.key,
    required this.Co,
  });
  final String Co;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      color: const Color(0xff020202).withOpacity(.3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          child: Row(
            children: [
              Text(
                Co,
                style: AppStyles.styleMedium16(context)
                    .copyWith(fontSize: 12, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Courses extends StatelessWidget {
  const Courses({Key? key, required this.courseseEntity}) : super(key: key);

  final CourseseEntity courseseEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            courseseEntity.imag ??
                'https://example.com/default-image.jpg', // Provide a fallback image URL if `imag` is null
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: bodycontinercourses(
        courseseEntity: courseseEntity,
      ),
    );
  }
}

class bodycontinercourses extends StatelessWidget {
  const bodycontinercourses({
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
          Expanded(
            child: Container(
              color: const Color(0xff020202).withOpacity(.3),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
                child: Text(
                  courseseEntity.nameof,
                  style: AppStyles.styleMedium16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: Row(
              children: [
                infocourses(
                  Co: courseseEntity.type,
                ),
                const SizedBox(
                  width: 5,
                ),
                infocourses(
                  Co: courseseEntity.day.toString(),
                ),
                const SizedBox(
                  width: 5,
                ),
                infocourses(
                  Co: courseseEntity.priceof,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
