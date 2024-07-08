import 'package:flutter/material.dart';

class Textformfieldresoncon extends StatelessWidget {
  const Textformfieldresoncon({
    super.key,
    required this.maxline,
    required this.initialValue,
  });

  final int maxline;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller =
        TextEditingController(text: initialValue);

    return TextFormField(
      controller: _controller,
      maxLines: maxline,
      decoration: InputDecoration(
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
