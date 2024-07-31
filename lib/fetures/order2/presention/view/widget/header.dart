import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order/data/headermodel.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/buttomorder.dart';

class HeaderBookting extends StatefulWidget {
  final ValueChanged<int> onTabChanged; // Callback to update selected index

  const HeaderBookting({super.key, required this.onTabChanged});

  @override
  _HeaderBooktingState createState() => _HeaderBooktingState();
}

class _HeaderBooktingState extends State<HeaderBookting> {
  List<Headermodel> lis = [
    Headermodel(
        text: "في الإنتظار", Color1: Colors.black, Color2: Colors.black),
    Headermodel(
        text: "تم استلامها", Color1: Colors.black, Color2: Colors.black),
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
                onTap: () {
                  setState(() {
                    selindex = idx;
                  });
                  widget.onTabChanged(idx); // Notify the parent widget
                },
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
