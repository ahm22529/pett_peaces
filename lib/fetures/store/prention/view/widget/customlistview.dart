import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/active.dart';

class Customlistview extends StatefulWidget {
  const Customlistview({super.key});

  @override
  State<Customlistview> createState() => _CustomlistviewState();
}

class _CustomlistviewState extends State<Customlistview> {
  int selindex = -1;
  List list = [
    "أدوية",
    "طعام",
    "أغذية",
    "أدوية",
    "طعام",
  ];
// ignore: camel_case_types
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selindex = index;
              });
            },
            child: active(
              color: selindex == index ? const Color(0xffF1F1F1) : Colors.white,
              text: list[index],
            )));
  }
}
