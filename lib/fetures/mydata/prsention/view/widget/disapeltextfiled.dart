import 'package:flutter/material.dart';

class Textformfiledemaildisaple extends StatelessWidget {
  const Textformfiledemaildisaple({
    super.key,
    this.maxline,
    this.initialValue,
    this.disabled = true, // Added disabled property with default value true
  });
  final int? maxline;
  final String? initialValue;
  final bool disabled; // Added disabled property

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxline,
      enabled:
          !disabled, // Enable/disable the TextFormField based on disabled flag
      validator: (v) {
        if (v!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        return null; // Ensure a null return when the input is valid
      },
      decoration: InputDecoration(
        fillColor: const Color(0xffEBEBEB),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: const Color(0xff000000).withOpacity(.25),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: const Color(0xff000000).withOpacity(.25),
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.red.withOpacity(.5),
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.red.withOpacity(.5),
            width: 1.0,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
