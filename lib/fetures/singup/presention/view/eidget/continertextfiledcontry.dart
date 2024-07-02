import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/countryphonetextfiled.dart';

class ContinerTextFiled extends StatelessWidget {
  const ContinerTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: const CountryPhoneTextfiled(),
    );
  }
}
