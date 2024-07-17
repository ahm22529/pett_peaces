import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/customcheckbox.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/rules.dart';

class AcceptsReuls extends StatefulWidget {
  const AcceptsReuls({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<bool> onChanged;
  @override
  State<AcceptsReuls> createState() => _AcceptsReulsState();
}

class _AcceptsReulsState extends State<AcceptsReuls> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (bool value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
        ),
        title: const Rules());
  }
}
