import 'package:flutter/material.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({
    super.key,
    required this.options,
    required this.controller,
  });

  final List<String> options;
  final TextEditingController controller;

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          value: selectedValue,
          decoration: InputDecoration(
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          items: widget.options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
              widget.controller.text = newValue ?? '';
            });
          },
        ),
      ],
    );
  }
}
