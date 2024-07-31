import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({
    super.key,
    required this.controller,
    required this.Imag,
    required this.onTap,
  });
  final String Imag;
  final TextEditingController controller;
  final void Function()? onTap;

  @override
  // ignore: library_private_types_in_public_api
  _DatePickerFieldState createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      readOnly: true,
      decoration: InputDecoration(
        suffixIcon: Image.asset(widget.Imag),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      onTap: widget.onTap,
    );
  }
}
