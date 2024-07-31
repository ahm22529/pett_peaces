import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/buttom_courses.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/priceand_discount.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class foter extends StatelessWidget {
  const foter({
    super.key,
    required this.courseseEntity, required this.userEntitymodel,
  });
  final CourseseEntity courseseEntity;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttomcours(
          titel: 'طلب إشتراك',
          onPressed: () {},
          userEntitymodel: userEntitymodel,
        ),
        const SizedBox(
          width: 48,
        ),
        const SizedBox(
          width: 8,
        ),
        Spacer(),
        priceanddiscount(
          courseseEntity: courseseEntity,
        ),
      ],
    );
  }
}
