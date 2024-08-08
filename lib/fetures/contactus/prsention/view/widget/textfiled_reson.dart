import 'package:flutter/material.dart';

class Textformfieldresoncon extends StatefulWidget {
  const Textformfieldresoncon({
    super.key,
    required this.maxline,
    required this.initialValue,
    this.enabel,
    required this.onChanged,
  });

  final bool? enabel;
  final int maxline;
  final String initialValue;
  final Function(String) onChanged;

  @override
  _TextformfieldresonconState createState() => _TextformfieldresonconState();
}

class _TextformfieldresonconState extends State<Textformfieldresoncon> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      enabled: widget.enabel,
      controller: _controller,
      maxLines: widget.maxline,
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
