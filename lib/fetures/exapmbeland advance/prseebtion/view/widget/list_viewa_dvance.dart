import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';

import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/profilea_dvace.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/header_and_body.dart';
import 'package:intl/intl.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ListViewAdvanced extends StatelessWidget {
  final List<ExambelEnitydetails> entity;
  final UserEntity userEntity;
  final void Function() onPressed;
  const ListViewAdvanced(
      {super.key,
      required this.entity,
      required this.onPressed,
      required this.userEntity});
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: entity.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => ProfileAdvance(
                          examel: entity[index],
                        ))),
            child: ItemAdvanced(
              examel: entity[index],
              onPressed: onPressed,
              userEntity: userEntity,
            )));
  }
}

class ItemAdvanced extends StatelessWidget {
  const ItemAdvanced({
    super.key,
    required this.examel,
    required this.onPressed,
    required this.userEntity,
  });
  final ExambelEnitydetails examel;
  final void Function() onPressed;
  final UserEntity userEntity;

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
          SizedBox(height: 113, width: 89, child: Image.network(examel.imagee)),
          HeaderAndBody(
            examel: examel,
            onPressed: onPressed,
            userEntity: userEntity,
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
