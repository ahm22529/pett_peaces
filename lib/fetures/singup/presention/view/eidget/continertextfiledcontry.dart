import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/countryphonetextfiled.dart';

class ContinerTextFiled extends StatelessWidget {
  const ContinerTextFiled({
    super.key,
    this.text,
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return  CountryPhoneTextfiled();
  }
}
