import 'package:flutter/material.dart';

class TextFilkedOther extends StatelessWidget {
  const TextFilkedOther({super.key, this.maxl});
  final int? maxl;
  @override
  Widget build(BuildContext context) {
    return  Textformfiledname(
        maxline: 1,
      );
  }
}

class Textformfiledname extends StatelessWidget {
  const Textformfiledname({
    super.key,
    this.maxline,
    this.initialValue, // Added initialValue
  });
  final int? maxline;
  final String? initialValue; // Added initialValue

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue, // Set initialValue here
      maxLines: maxline,
      validator: (v) {
        if (v!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        return null; // Ensure a null return when the input is valid
      },
      decoration: InputDecoration(
        fillColor: const Color(0xffFFFFFF),
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
