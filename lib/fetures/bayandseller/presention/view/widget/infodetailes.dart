import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/iteaminfo.dart';

class infoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff00070D40).withOpacity(.25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          iteaminfo(text1: 'روز', text2: 'الأسم',),
          SizedBox(height: 8),
          iteaminfo(text1: '8 شهور', text2: 'العمر',),
          SizedBox(height: 8),
          iteaminfo(text1: 'ذكر', text2: 'النوع',),
        ],
      ),
    );
  }
}
