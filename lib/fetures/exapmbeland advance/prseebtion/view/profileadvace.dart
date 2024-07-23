import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';

import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/bodyofprofileadvace.dart';

class ProfileAdvance extends StatelessWidget {
  final ExambelEnitydetails examel;

  const ProfileAdvance({super.key, required this.examel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProfileAdvance(
        examel: examel,
      ),
    );
  }
}
