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
  });

  final bool? ddd;
  final List<Animal> options;
  final TextEditingController controller;

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
            });
          },
        ),
      ],
    );
  }
}
