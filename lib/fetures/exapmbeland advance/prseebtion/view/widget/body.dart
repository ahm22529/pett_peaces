import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteamcontiner.dart';

class Bodyofheader extends StatelessWidget {
  final ExambelEnitydetails examel;
  const Bodyofheader({
    super.key,
    this.fontSize = 14,
    required this.examel,
  });
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(
          examel.titel,
          style: AppStyles.styleRegular14(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: fontSize),
        ),
        const SizedBox(
          height: 8,
        ),
        HtmlWidget(
          examel.contant,
        ),
      ],
    );
  }
}
