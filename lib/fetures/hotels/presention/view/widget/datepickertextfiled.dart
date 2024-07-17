import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({
    super.key,
    required this.controller,
    required this.Imag,
  });
  final String Imag;
  final TextEditingController controller;

  @override
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
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );

        if (pickedDate != null) {
          setState(() {
            widget.controller.text = "${pickedDate.toLocal()}".split(' ')[0];
          });
        }
      },
    );
  }
}
