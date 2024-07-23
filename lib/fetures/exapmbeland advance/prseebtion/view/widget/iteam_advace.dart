import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/headerandbody.dart';

class ItemAdvanced extends StatelessWidget {
  const ItemAdvanced({
    super.key,
    required this.examel,
  });
  
  final ExambelEnitydetails examel;

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    bool isToday = DateFormat('yyyy-MM-dd').format(today) ==
        DateFormat('yyyy-MM-dd').format(examel.cretat);
    int differenceInDays = today.difference(examel.cretat).inDays;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 113,
            width: 89,
            child: Image.network(examel.imagee),
          ),
          Expanded(
            child: HeaderAndBody(
              examel: examel,
            ),
          ),
          Text(
            isToday
                ? DateFormat('HH:mm').format(examel.cretat)
                : '$differenceInDays يوم',
            style: AppStyles.styleRegular14(context),
          ),
        ],
      ),
    );
  }
}
