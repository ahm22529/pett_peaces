import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/iteaminfo.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

class infoa extends StatelessWidget {
  final AnmilesEntity anmilesEntity;

  const infoa({super.key, required this.anmilesEntity});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .32,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff00070D40).withOpacity(.25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          iteaminfo(
            text1: anmilesEntity.namee,
            text2: 'الأسم',
          ),
          SizedBox(height: 8),
          iteaminfo(
            text1: anmilesEntity.agee.toString(),
            text2: 'العمر',
          ),
          SizedBox(height: 8),
          iteaminfo(
            text1: anmilesEntity.gendere,
            text2: 'النوع',
          ),
        ],
      ),
    );
  }
}
