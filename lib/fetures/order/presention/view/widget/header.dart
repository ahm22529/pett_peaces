import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/data/headermodel.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/buttomorder.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/header.dart';

class BodyOrder extends StatefulWidget {
  @override
  _BodyOrderState createState() => _BodyOrderState();
}

class _BodyOrderState extends State<BodyOrder> {
  List<Headermodel> lis = [
    Headermodel(
        text: 'قيدالمراجعه', Color1: Colors.black, Color2: Colors.black),
    Headermodel(text: 'نشط', Color1: Colors.black, Color2: Colors.black),
    Headermodel(text: 'منتهيه', Color1: Colors.black, Color2: Colors.black)
  ];
  int selindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xffF78E32).withOpacity(.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: lis.asMap().entries.map((entry) {
            int idx = entry.key;
            Headermodel model = entry.value;
            return Expanded(
              child: GestureDetector(
                onTap: () => setState(() {
                  selindex = idx;
                }),
                child: ButtomOrder(
                  color: selindex == idx
                      ? Color(0xffF78E32)
                      : Color(0xffF78E32).withOpacity(.1),
                  text: lis[idx].text,
                  colortext: selindex == idx ? Colors.white : Colors.black,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
