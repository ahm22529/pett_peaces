import 'package:flutter/material.dart';

class CheckCorrect extends StatefulWidget {
  const CheckCorrect(
      {super.key, required this.titel, required this.onCheckboxChanged});
  final String titel;
  final Function(bool, String) onCheckboxChanged;

  @override
  _CheckCorrectState createState() => _CheckCorrectState();
}

class _CheckCorrectState extends State<CheckCorrect> {
  bool _isChecked = false;

  void _onChanged(bool? newValue) {
    setState(() {
      _isChecked = newValue!;
      widget.onCheckboxChanged(_isChecked, widget.titel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.titel,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Checkbox(
          value: _isChecked,
          onChanged: _onChanged,
          activeColor: const Color(0xffF78E32), // لون الـ Checkbox عند التفعيل
          checkColor: Colors.white, // لون العلامة داخل الـ Checkbox
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: Color(0xffF78E32)), // لون الحواف
          ),
        ),
      ],
    );
  }
}
