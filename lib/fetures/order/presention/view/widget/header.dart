import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/order/data/headermodel.dart';
import 'package:pett_peaces/fetures/order/presention/manager/cubit/pending_cubit.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/buttomorder.dart';

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

  void _updateText(int index, String newText) {
    setState(() {
      lis[index] = Headermodel(
          text: newText, Color1: lis[index].Color1, Color2: lis[index].Color2);
    });
  }

  void _handleButton1() {
    BlocProvider.of<PendingCubit>(context).getdata(
        endpoint: "hotel/reservations/my-reservations/pending",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
    _updateText(0, 'قيدالمراجعه');
    _updateText(1, 'نشط');
    _updateText(2, 'منتهيه');
  }

  void _handleButton2() {
    BlocProvider.of<PendingCubit>(context).getdata(
        endpoint: "hotel/reservations/my-reservations/active",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
    _updateText(0, 'انتهاء');
    _updateText(1, 'نشط');
    _updateText(2, 'منتهيه');
  }

  void _handleButton3() {
    BlocProvider.of<PendingCubit>(context).getdata(
        endpoint: "hotel/reservations/my-reservations/expired",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
    _updateText(0, 'انتهاء');
    _updateText(1, 'انتهاء');
    _updateText(2, 'منتهيه');
  }

  void _onButtonPressed(int index) {
    switch (index) {
      case 0:
        _handleButton1();
        break;
      case 1:
        _handleButton2();
        break;
      case 2:
        _handleButton3();
        break;
    }
  }

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
                  _onButtonPressed(idx);
                },
                child: ButtomOrder(
                  color: selindex == idx
                      ? Color(0xffF78E32)
                      : Color(0xffF78E32).withOpacity(.1),
                  text: model.text,
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
