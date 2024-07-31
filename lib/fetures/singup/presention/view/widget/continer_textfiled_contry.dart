import 'package:country_code_text_field/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/country_phone_textfiled.dart';
class ContinerTextFiled extends StatelessWidget {
  const ContinerTextFiled({
    super.key,
    this.text,
    required this.onSaved,
  });
  final String? text;
  final void Function(PhoneNumber?) onSaved;
  @override
  Widget build(BuildContext context) {
    return CountryPhoneTextfiled(
      onSaved: onSaved,
    );
  }
}
