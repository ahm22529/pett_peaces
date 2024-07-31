import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bookinghotel/data/headermodel.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/view/widget/buttom_order.dart';

class HeaderBooktingHo extends StatefulWidget {
  final ValueChanged<int> onTabChanged; // Callback to update selected index

  const HeaderBooktingHo({super.key, required this.onTabChanged});

  @override
  // ignore: library_private_types_in_public_api
  _HeaderBooktingState createState() => _HeaderBooktingState();
}

class _HeaderBooktingState extends State<HeaderBooktingHo> {
  List<Headermodel> lis = [
    Headermodel(
        text: " قيد المراجعه", Color1: Colors.black, Color2: Colors.black),
    Headermodel(text: " نشطه", Color1: Colors.black, Color2: Colors.black),
    Headermodel(text: "  منتهيه", Color1: Colors.black, Color2: Colors.black),
  ];
  int selindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xffF78E32).withOpacity(.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: lis.asMap().entries.map((entry) {
            int idx = entry.key;
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
                      ? const Color(0xffF78E32)
                      : const Color(0xffF78E32).withOpacity(.1),
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
