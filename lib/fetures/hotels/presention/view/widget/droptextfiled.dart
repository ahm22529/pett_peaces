import 'dart:developer';

import 'package:flutter/material.dart';

class Animal {
  final int id;
  final String name;

  Animal({required this.id, required this.name});
}

class DropdownFieldbook extends StatefulWidget {
  const DropdownFieldbook({
    super.key,
    required this.options,
    required this.controller,
    this.ddd = true,
    required this.onSelected, // Add callback function
  });

  final bool? ddd;
  final List<Animal> options;
  final TextEditingController controller;
  final ValueChanged<Animal?> onSelected; // Add callback function type

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownFieldbook> {
  Animal? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<Animal>(
          value: selectedValue,
          decoration: InputDecoration(
            enabled: widget.ddd!,
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          items: widget.options.map<DropdownMenuItem<Animal>>((Animal value) {
            return DropdownMenuItem<Animal>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          onChanged: (Animal? newValue) {
            setState(() {
              selectedValue = newValue;
              widget.controller.text = newValue?.name ?? '';
              widget.onSelected(newValue); // Call the callback function
              log(newValue?.id.toString() ?? "");
            });
          },
        ),
      ],
    );
  }
}
