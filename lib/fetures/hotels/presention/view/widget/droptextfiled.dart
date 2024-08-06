import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class Animal {
  final String name;
  final int id;

  Animal({required this.id, required this.name});
}

class DropdownFieldbook extends StatefulWidget {
  const DropdownFieldbook({
    super.key,
    required this.options,
    required this.controller,
    this.ddd = true,
    required this.onSelected,
  });

  final bool? ddd;
  final List<Animal> options;
  final SingleValueDropDownController controller;
  final ValueChanged<Animal?> onSelected;

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownFieldbook> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropDownTextField(
          controller: widget.controller,
          clearOption: widget.ddd ?? true,
          textFieldDecoration: InputDecoration(
            enabled: widget.ddd!,
            fillColor: const Color(0xffFFFFFF),
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          dropDownList: widget.options
              .map((Animal value) => DropDownValueModel(
                    name: value.name,
                    value: value,
                  ))
              .toList(),
          onChanged: (dynamic newValue) {
            if (newValue is DropDownValueModel) {
              Animal? selectedAnimal = newValue.value as Animal?;
              widget.controller.dropDownValue = DropDownValueModel(
                name: selectedAnimal?.name ?? '',
                value: selectedAnimal,
              );
              widget.onSelected(selectedAnimal);
              log(selectedAnimal?.id.toString() ?? "");
            } else {
              widget.onSelected(null);
            }
          },
        ),
      ],
    );
  }
}
