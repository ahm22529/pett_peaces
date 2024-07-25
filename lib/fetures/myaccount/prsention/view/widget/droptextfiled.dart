import 'package:flutter/material.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({
    super.key,
    required this.options,
    required this.controller,
    this.ddd = false,
    this.onChanged,
  });

  final bool?
      ddd; // This determines if the Dropdown should be enabled or disabled
  final List<String> options; // Options for the Dropdown
  final TextEditingController controller; // Controller to manage text input
  final void Function(String?)?
      onChanged; // Callback when an option is selected

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
            border: widget.ddd == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  )
                : OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey), // Gray border when disabled
                  ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            hintText: widget.ddd == false ? 'ذكر' : null,
          ),
          items: widget.ddd == true
              ? widget.options.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()
              : [], // Show no options if Dropdown is disabled
          onChanged: widget.ddd == true ? widget.onChanged : null,
          // Disable interaction if Dropdown is not enabled
        ),
      ],
    );
  }
}
